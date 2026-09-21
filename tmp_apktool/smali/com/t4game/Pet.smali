.class public Lcom/t4game/Pet;
.super Ljava/lang/Object;


# static fields
.field public static imgHead:Ljavax/microedition/lcdui/Image;

.field private static pet:Lcom/t4game/Pet;


# instance fields
.field public PET_NOMALATTACKID:I

.field public attrPoint:I

.field private bShowPet:B

.field public beNomalUpdate:B

.field public beUsePet:B

.field final col:B

.field public cur:I

.field public curExp:I

.field public curUsePetIndex:B

.field public expCommandW:I

.field public gs:Lcom/t4game/GameScreen;

.field public gw:Lcom/t4game/GameWorld;

.field public lastAttrPoint:I

.field private list1:Lcom/t4game/UList;

.field private list2:Lcom/t4game/UList;

.field private list3:Lcom/t4game/UList;

.field private list4:Lcom/t4game/UList;

.field public nextExp:I

.field private objLoading:Lcom/t4game/GObjectData;

.field private objNextPet:Lcom/t4game/GObjectData;

.field private objPet:Lcom/t4game/GObjectData;

.field public objPets:[Lcom/t4game/GObjectData;

.field private objidList4:[I

.field private page:Lcom/t4game/UPageLable;

.field public petAttr:[[I

.field public petColor:B

.field private petGeniusData:Lcom/t4game/GGeniusData;

.field public petGeniusTree:Lcom/t4game/GGeniusTreeData;

.field public petGeniusTreeIndex:Ljava/lang/String;

.field private petGrade:I

.field private petHp:I

.field public petImgID:I

.field public petIndex:I

.field public petLastColor:B

.field private petMaxHp:I

.field private petMaxMp:I

.field private petMp:I

.field public petName:Ljava/lang/String;

.field public petNextImgID:I

.field public petQuickCurIDShow:[I

.field public petQuickCurIconShow:[I

.field public petQuickID:[I

.field public petQuickIDShow:[I

.field public petQuickIcon:[I

.field public petQuickIconShow:[I

.field public petStarNum:I

.field plContentH:I

.field plContentY:I

.field public playerName:Ljava/lang/String;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field final row:B

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field public skillList:Ljava/util/Hashtable;

.field public skillPoint:I

.field private strList1:[Ljava/lang/String;

.field private strList2:[Ljava/lang/String;

.field private strList3:[Ljava/lang/String;

.field private strList4:[Ljava/lang/String;

.field private strPage:[Ljava/lang/String;

.field public tempPetName:Ljava/lang/String;

.field public totle:I

.field private viewStateOfDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/t4game/Pet;

    invoke-direct {v0}, Lcom/t4game/Pet;-><init>()V

    sput-object v0, Lcom/t4game/Pet;->pet:Lcom/t4game/Pet;

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/Pet;->imgHead:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v2, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    iput v3, p0, Lcom/t4game/Pet;->petHp:I

    iput v3, p0, Lcom/t4game/Pet;->petMaxHp:I

    iput v3, p0, Lcom/t4game/Pet;->petMp:I

    iput v3, p0, Lcom/t4game/Pet;->petMaxMp:I

    iput v3, p0, Lcom/t4game/Pet;->petGrade:I

    iput-byte v1, p0, Lcom/t4game/Pet;->bShowPet:B

    iput v1, p0, Lcom/t4game/Pet;->skillPoint:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iput v1, p0, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickIcon:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickID:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickIconShow:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    iput v1, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    iput-object v2, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-object v2, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->strPage:[Ljava/lang/String;

    iput v1, p0, Lcom/t4game/Pet;->plContentY:I

    iput v1, p0, Lcom/t4game/Pet;->plContentH:I

    iput-object v2, p0, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    iput-object v2, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    iput-object v2, p0, Lcom/t4game/Pet;->objLoading:Lcom/t4game/GObjectData;

    const-string v0, "\u5ba0\u7269\u540d"

    iput-object v0, p0, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    const-string v0, "\u73a9\u5bb6\u540d"

    iput-object v0, p0, Lcom/t4game/Pet;->playerName:Ljava/lang/String;

    iput v1, p0, Lcom/t4game/Pet;->curExp:I

    iput v1, p0, Lcom/t4game/Pet;->nextExp:I

    iput-byte v5, p0, Lcom/t4game/Pet;->petColor:B

    iput-byte v5, p0, Lcom/t4game/Pet;->petLastColor:B

    const/16 v0, 0xa

    iput v0, p0, Lcom/t4game/Pet;->petStarNum:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/t4game/Pet;->cur:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/t4game/Pet;->totle:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/t4game/Pet;->expCommandW:I

    iput v1, p0, Lcom/t4game/Pet;->petImgID:I

    iput v1, p0, Lcom/t4game/Pet;->petNextImgID:I

    iput v1, p0, Lcom/t4game/Pet;->attrPoint:I

    iput v1, p0, Lcom/t4game/Pet;->lastAttrPoint:I

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/t4game/Pet;->col:B

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/Pet;->row:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    iput-byte v3, p0, Lcom/t4game/Pet;->beUsePet:B

    iput v1, p0, Lcom/t4game/Pet;->petIndex:I

    iput-byte v1, p0, Lcom/t4game/Pet;->beNomalUpdate:B

    return-void
.end method

.method private draw2DialogPetAutoAttackList(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    const/16 v3, 0x168

    const/16 v4, 0xc8

    iget-object v5, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v7, v6, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget v9, v6, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x264

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/16 v8, 0x22

    sget v7, Lcom/t4game/PointerUtil;->MAGIC_HOT_KEY_MENU_X:I

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x16

    sub-int v2, v7, v2

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2a

    mul-int/lit8 v4, v8, 0x5

    add-int/lit8 v4, v4, 0x2c

    add-int/lit8 v5, v8, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_4

    mul-int v0, v1, v8

    add-int/2addr v0, v7

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2a

    add-int/lit8 v2, v2, 0x6

    invoke-static {v0, v2, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v2, 0x0

    aput v7, v0, v2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2a

    add-int/lit8 v3, v3, 0x6

    aput v3, v0, v2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, v8

    aput v3, v0, v2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v3, v8

    aput v3, v0, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aget v0, v0, v1

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/t4game/Defaults;->defaultAttack:Ljavax/microedition/lcdui/Image;

    mul-int v2, v1, v8

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2a

    add-int/lit8 v3, v3, 0x8

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    :goto_2
    mul-int v0, v1, v8

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2a

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x1

    invoke-static {v0, v2, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    mul-int v2, v1, v8

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2a

    add-int/lit8 v3, v3, 0x8

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v1, v0, Lcom/t4game/Pack;->maxSkillNum:B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x1e

    int-to-short v9, v0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput v9, v0, Lcom/t4game/GameScreen;->itemPanelX:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x52

    iput v2, v0, Lcom/t4game/GameScreen;->itemPanelY:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v2, Lcom/t4game/Pack;->oneLineNum:B

    mul-int/2addr v2, v8

    iput v2, v0, Lcom/t4game/GameScreen;->itemPanelWidth:I

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v0, v0, Lcom/t4game/Pack;->maxSkillNum:B

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v2, Lcom/t4game/Pack;->oneLineNum:B

    div-int/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v2, Lcom/t4game/Pack;->maxSkillNum:B

    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v3, v3, Lcom/t4game/Pack;->oneLineNum:B

    rem-int/2addr v2, v3

    if-lez v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    mul-int/2addr v0, v8

    iput v0, v2, Lcom/t4game/GameScreen;->itemPanelHeight:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput v8, v0, Lcom/t4game/GameScreen;->itemPanelVSpace:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput v8, v0, Lcom/t4game/GameScreen;->itemPanelHSpace:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v2, Lcom/t4game/Pack;->maxSkillNum:B

    iput v2, v0, Lcom/t4game/GameScreen;->itemPanelLength:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v2, Lcom/t4game/Pack;->oneLineNum:B

    iput v2, v0, Lcom/t4game/GameScreen;->itemPanelBlockWidth:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/4 v2, 0x0

    iput-byte v2, v0, Lcom/t4game/GameScreen;->itemScrollIndex:B

    const/4 v0, 0x0

    move v2, v0

    move v0, v6

    :goto_3
    if-ge v2, v1, :cond_9

    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v3, v3, Lcom/t4game/Pack;->oneLineNum:B

    if-ge v2, v3, :cond_7

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x52

    add-int/lit8 v0, v0, 0x5

    move v3, v0

    :goto_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v0, v0, Lcom/t4game/Pack;->oneLineNum:B

    rem-int v0, v2, v0

    mul-int v4, v0, v8

    add-int v0, v9, v4

    invoke-static {v0, v3, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    aget v0, v0, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget v5, v5, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-ne v0, v5, :cond_8

    sget-object v0, Lcom/t4game/Defaults;->defaultAttack:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v5, v9, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_6
    :goto_5
    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    move v0, v3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v3, v3, Lcom/t4game/Pack;->oneLineNum:B

    rem-int v3, v2, v3

    if-nez v3, :cond_f

    add-int/2addr v0, v8

    move v3, v0

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickIcon:[I

    aget v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget-object v5, v5, Lcom/t4game/Pet;->petQuickIcon:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_6

    add-int/lit8 v5, v9, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    const/16 v1, 0x265

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7e

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v0, v1, Lcom/t4game/GameScreen;->maxLenOfInfo:B

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    int-to-byte v6, v0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0xb4

    add-int/lit8 v0, v0, 0x5

    int-to-short v0, v0

    const/16 v1, 0x25

    const/16 v2, 0xaa

    iget v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v4, v4, Lcom/t4game/GameScreen;->focuseInfoIndex:B

    :goto_6
    const/4 v7, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintScrollScreenMenu(SSS[Ljava/lang/String;BLjavax/microedition/lcdui/Graphics;BZ)V

    const-string v1, "\u63d0\u4ea4"

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0xb4

    add-int/lit8 v2, v0, 0x28

    const/16 v0, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v3

    const/16 v3, 0xa

    sub-int v3, v0, v3

    const/16 v4, 0x64

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommandButton(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIZ)V

    const/4 v0, 0x1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    add-int/lit8 v1, v1, 0x28

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    const/16 v3, 0x64

    sget v4, Lcom/t4game/Defaults;->sfh:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_a
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x52

    add-int/lit8 v0, v0, 0x5

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v1, v1, Lcom/t4game/Pack;->oneLineNum:B

    div-int/2addr v0, v1

    mul-int/2addr v0, v8

    add-int/lit8 v3, v0, 0x57

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v1, v1, Lcom/t4game/Pack;->oneLineNum:B

    rem-int/2addr v0, v1

    mul-int v2, v0, v8

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    add-int v0, v9, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v3, 0x1

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    :cond_b
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v0, 0x18

    add-int/lit8 v0, v0, 0x4

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x1

    const/16 v4, 0x266

    invoke-static {v1, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x1c

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_6

    :cond_d
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v5, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v5, v5, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/RoleSkill;

    iget-object v1, p0, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x1c

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x268

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_0

    :cond_f
    move v3, v0

    goto/16 :goto_4
.end method

.method private draw2DialogPetAutoAttackList0(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/16 v13, 0x1e

    const/4 v12, 0x5

    const/16 v9, 0x2a

    const/4 v1, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    int-to-short v3, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    int-to-short v4, v2

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v5, v2, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v7, v2, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget v9, v2, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move v2, v1

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc29

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0x2c7

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x52

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v2, 0x3e

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int v3, v9, v12

    const/16 v4, 0x7c

    const v6, 0x121212

    move v5, v13

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/t4game/DraftingUtil;->paintFaceBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    move v2, v1

    :goto_1
    if-ge v2, v12, :cond_4

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x2f

    sub-int/2addr v0, v3

    mul-int/lit8 v3, v2, 0x20

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v9, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aget v0, v0, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v3

    iget v3, v3, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/t4game/Defaults;->defaultAttack:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x13

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v9, 0x2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    :goto_2
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x2f

    sub-int/2addr v0, v3

    mul-int/lit8 v3, v2, 0x13

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v3, v4, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v3

    iget-object v3, v3, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x13

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v9, 0x2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v2, v0, Lcom/t4game/Pack;->maxSkillNum:B

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_8

    const/16 v0, 0x9

    if-ge v3, v0, :cond_6

    move v4, v12

    :goto_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v0, v0, Lcom/t4game/Pack;->oneLineNum:B

    rem-int v0, v3, v0

    mul-int/lit8 v5, v0, 0x13

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v0, v0, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/2addr v0, v5

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v4, 0x52

    invoke-static {v0, v6, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    aget v0, v0, v3

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v6

    iget v6, v6, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-ne v0, v6, :cond_7

    sget-object v0, Lcom/t4game/Defaults;->defaultAttack:Ljavax/microedition/lcdui/Image;

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v6, v6, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x52

    add-int/lit8 v4, v4, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v5, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_5
    :goto_5
    add-int/lit8 v0, v3, 0x1

    int-to-byte v0, v0

    move v3, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v13, 0x5

    int-to-byte v0, v0

    move v4, v0

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickIcon:[I

    aget v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v6

    iget-object v6, v6, Lcom/t4game/Pet;->petQuickIcon:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v6, v6, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x52

    add-int/lit8 v4, v4, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v5, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x265

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v2, v13

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    int-to-byte v9, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x84

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1e

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v5, 0x14

    sub-int/2addr v4, v5

    const/16 v5, 0xa0

    const v6, 0x121212

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/t4game/DraftingUtil;->paintBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    move v11, v1

    :goto_6
    if-ge v11, v9, :cond_9

    aget-object v2, v0, v11

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x84

    iget-object v5, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1e

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v11

    add-int/lit16 v4, v4, 0xa2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v2, v11, 0x1

    int-to-byte v2, v2

    move v11, v2

    goto :goto_6

    :cond_9
    const/16 v0, 0xff

    const/16 v2, 0xff

    invoke-virtual {p1, v0, v2, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v1, v1, Lcom/t4game/Pack;->oneLineNum:B

    if-ge v0, v1, :cond_a

    move v3, v12

    :goto_7
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-byte v1, v1, Lcom/t4game/Pack;->oneLineNum:B

    rem-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x13

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v0, v0, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v3, 0x52

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x266

    invoke-static {v10, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v4, v4, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x14

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x52

    add-int/lit8 v3, v3, 0x14

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v13, 0x5

    int-to-byte v0, v0

    move v3, v0

    goto :goto_7

    :cond_b
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v5, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v5, v5, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/RoleSkill;

    iget-object v1, v1, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v4, v4, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x14

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x52

    add-int/lit8 v3, v3, 0x14

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v0, v10, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v1, v1, 0x28

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x267

    invoke-static {v10, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget v4, v4, Lcom/t4game/GameScreen;->faSkillLeft:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x14

    iget-object v4, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x52

    add-int/lit8 v3, v3, 0x14

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x268

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_0
.end method

.method private draw2DialogPetSkillList(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/16 v1, 0x6e7

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    const/16 v3, 0x168

    const/16 v4, 0xc8

    iget-object v5, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v7, v6, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget v9, v6, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_2

    invoke-static {v10, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    invoke-static {v10, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-static {v0, p1, v1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameUi;)V

    goto :goto_1
.end method

.method private draw2DialogPetSkillList0(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    int-to-short v3, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    int-to-short v4, v2

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v5, v2, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v7, v2, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget v9, v2, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move v2, v1

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v0, v0, 0x5

    const/16 v0, 0x6e7

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method private drawA(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/high16 v0, 0xff0000

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    add-int v1, p1, p3

    const/4 v0, 0x4

    sub-int v2, p2, v0

    add-int v3, p1, p3

    add-int v0, p2, p4

    add-int/lit8 v4, v0, 0x4

    add-int v0, p1, p3

    add-int/lit8 v5, v0, 0x8

    shr-int/lit8 v0, p4, 0x1

    add-int v6, p2, v0

    move-object v0, p5

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    return-void
.end method

.method private drawPet(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const/16 v12, 0x21

    const/16 v11, 0x96

    const v10, 0xffc700

    const/4 v9, -0x1

    const/4 v8, 0x1

    const-string v0, "\u6218\u5ba0\u5316\u5f62"

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0, p1}, Lcom/t4game/UPageLable;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Pet;->plContentY:I

    iget v1, p0, Lcom/t4game/Pet;->plContentH:I

    shr-int/lit8 v1, v1, 0x1

    add-int v7, v0, v1

    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->getIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v1, 0x23

    sub-int v1, v0, v1

    iget v0, p0, Lcom/t4game/Pet;->plContentY:I

    add-int/lit8 v2, v0, 0x32

    const/16 v3, 0x1e

    const/4 v4, 0x5

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/Pet;->drawA(IIIILjavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0xc39

    invoke-static {v8, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v2, 0x4b

    sub-int/2addr v1, v2

    sub-int v2, v7, v8

    move v3, v12

    move v4, v10

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0xc3a

    invoke-static {v8, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v1, v1, 0x4b

    sub-int v2, v7, v8

    move v3, v12

    move v4, v10

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v1, 0x4b

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    invoke-direct {p0, p1, v0, v11, v1}, Lcom/t4game/Pet;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    iget v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    if-eq v0, v9, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_1

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v0, v0, 0x4b

    iget-object v1, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    invoke-direct {p0, p1, v0, v11, v1}, Lcom/t4game/Pet;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    :cond_1
    iget v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    if-ne v0, v9, :cond_2

    const-string v0, "\u672a\u5f00\u542f"

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v1, v1, 0x4b

    move v2, v11

    move v3, v12

    move v4, v10

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    iget v0, p0, Lcom/t4game/Pet;->plContentY:I

    iget v1, p0, Lcom/t4game/Pet;->plContentH:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    const v1, 0x7a654a

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget-object v3, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iget v3, v3, Lcom/t4game/UPageLable;->w:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v0, v2, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/Pet;->plContentY:I

    iget v1, p0, Lcom/t4game/Pet;->plContentH:I

    shr-int/lit8 v1, v1, 0x1

    add-int v2, v0, v1

    const v0, 0x7a654a

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget-object v3, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iget v3, v3, Lcom/t4game/UPageLable;->w:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v0, v2, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc3b

    invoke-static {v8, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Pet;->attrPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->x:I

    iget-object v3, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->w:I

    add-int/2addr v1, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    const/16 v3, 0x18

    move v4, v9

    move v5, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Pet;->plContentH:I

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowH:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowY:I

    :goto_1
    iget-object v2, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->rowY:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/t4game/Pet;->drawPetAddAttr(Ljavax/microedition/lcdui/Graphics;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u63d0\u4ea4"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->drawPetMagicGenius(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/Pet;->beUsePet:B

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    if-ltz v0, :cond_4

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v1, p0, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    iget-byte v2, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v0, v11, v1}, Lcom/t4game/Pet;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    :cond_4
    :goto_2
    const v0, 0x7a654a

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget-object v2, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iget v2, v2, Lcom/t4game/UPageLable;->w:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v7, v1, v7}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/Pet;->beUsePet:B

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    iget-object v1, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowY:I

    if-lt v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    iget-object v1, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowY:I

    iget-object v2, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->rowNum:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    const/16 v0, 0xc3c

    invoke-static {v8, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->x:I

    iget-object v2, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget-object v2, v2, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/t4game/Pet;->getStrW(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->y:I

    iget-byte v3, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    iget-object v4, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v4, v4, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iget v4, v4, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/16 v3, 0x14

    move v4, v9

    move v5, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_5
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->getCmd()I

    move-result v0

    if-ltz v0, :cond_4

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    aget-object v0, v2, v0

    invoke-direct {p0, p1, v1, v11, v0}, Lcom/t4game/Pet;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawPetAddAttr(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v8, ""

    iget-object v0, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v0, v0, Lcom/t4game/UList;->x:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget-object v2, v2, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->y:I

    iget-object v2, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->rowH:I

    iget-object v3, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->rowY:I

    sub-int v3, p2, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const v2, 0xff00

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v3, v3, p2

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v3, v3, p2

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Pet;->getStrW(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const v2, 0xff00

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v1, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v7

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v5, v7

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v3, v1, 0x4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x6

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v10

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    sget v2, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    add-int/lit8 v3, v1, 0x6

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v10

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v2, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v2, v2, p2

    aget v2, v2, v9

    if-lez v2, :cond_0

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    const v2, 0xffff00

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v3, v3, p2

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method private drawPetMagicGenius(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/4 v10, 0x1

    iget v0, p0, Lcom/t4game/Pet;->plContentY:I

    add-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v3, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iget v0, p0, Lcom/t4game/Pet;->petGrade:I

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/Pet;->drawGeniusTree(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GGeniusTreeData;Ljava/util/Hashtable;Ljava/lang/String;S)V

    const/16 v0, 0xe8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x260

    invoke-static {v10, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Pet;->skillPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->w:I

    int-to-short v3, v3

    const/16 v4, 0xc8

    iget-object v5, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v7, v6, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v6, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget v9, v6, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x261

    invoke-static {v10, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V
    .locals 11

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->objLoading:Lcom/t4game/GObjectData;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    move-object v0, p4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v1

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v2, v2, Lcom/t4game/GUser;->nowFrame:B

    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-lt v2, v1, :cond_a

    rem-int v1, v2, v1

    :goto_1
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDatas:[B

    aget-byte v2, v2, v1

    iget-object v3, v0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    aget-short v3, v3, v2

    iget-object v4, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    iget-object v4, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    aget-byte v4, v4, v5

    iget-object v5, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v5, v6

    and-int/lit8 v5, v7, 0x2

    if-lez v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    and-int/lit8 v6, v7, 0x1

    if-lez v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    if-eqz v5, :cond_5

    neg-int v3, v3

    :cond_5
    if-eqz v6, :cond_6

    neg-int v4, v4

    :cond_6
    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_9

    iget-object v7, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    add-int/2addr v7, p2

    iget-object v8, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v9, v1, 0x3

    aget-byte v8, v8, v9

    add-int/2addr v8, p3

    iget-object v9, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v10, v1, 0x2

    aget-byte v9, v9, v10

    add-int/2addr v3, v9

    iget-object v3, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v3, v1

    add-int/2addr v1, v4

    move v4, v8

    move v3, v7

    :goto_4
    const/4 v1, 0x0

    move v8, v1

    :goto_5
    const/4 v1, 0x4

    if-ge v8, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GObjectData;->drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->resetClip()V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move v4, p3

    move v3, p2

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method private findIconIDByID(I)I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/RoleSkill;

    iget-short v2, p0, Lcom/t4game/RoleSkill;->id:S

    if-ne p1, v2, :cond_0

    iget-short v0, p0, Lcom/t4game/RoleSkill;->iconId:S

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getIns()Lcom/t4game/Pet;
    .locals 1

    sget-object v0, Lcom/t4game/Pet;->pet:Lcom/t4game/Pet;

    return-object v0
.end method

.method private static getStrW(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-char v4, v0, v1

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private pointerOfDialogPetAutoAttackList()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pointerFBagCanShowIntro()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v11, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v7}, Lcom/t4game/GameScreen;->getIndexInItemPanel(Z)I

    move-result v1

    if-eq v1, v9, :cond_4

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v2, Lcom/t4game/GameScreen;->topAletIntroTick:B

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v2, v2, Lcom/t4game/Pack;->skill:[S

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    if-eq v1, v9, :cond_3

    move v0, v1

    :cond_3
    int-to-byte v0, v0

    iput-byte v0, v2, Lcom/t4game/GameScreen;->pageOfDialog:B

    :cond_4
    :goto_1
    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget v2, Lcom/t4game/PointerUtil;->MAGIC_HOT_KEY_MENU_X:I

    const/16 v3, 0x28

    const/16 v4, 0xaa

    const/16 v5, 0x22

    const/16 v6, 0x22

    invoke-static/range {v0 .. v7}, Lcom/t4game/PointerUtil;->getPointerMenuIndex(IIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerMenuIndex:I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v2, v2, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v1, v1, v2

    const/16 v2, -0x64

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->pageOfDialog:B

    if-nez v1, :cond_6

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    aput v2, v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickIcon:[I

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v3, v3, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v2, v2, v3

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v3, v3, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v2, v2, v3

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickIconH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickIconH:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aput v9, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aput v9, v1, v0

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget v4, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v5, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v11, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-static {v7}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    if-eq v0, v9, :cond_9

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/2addr v0, v2

    :goto_2
    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/t4game/GameScreen;->focuseInfoIndex:B

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->focuseInfoIndex:B

    goto :goto_2

    :cond_a
    invoke-static {v7}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v10, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerFastViewKey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v10, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->getChangeQuickUseNum()B

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v8}, Lcom/t4game/GameScreen;->clearAlertScrossMessage(B)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/Pet;->sendPetQuickUse()Z

    :cond_e
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v8, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0
.end method

.method private pressedOfDialogMagicGenius(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x7

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    if-ne p1, v5, :cond_0

    iput v3, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    :cond_2
    iput v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_6

    iget-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v1, v1, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/t4game/Pet;->petGrade:I

    if-eq v0, v4, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_8

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v3

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-boolean v3, v0, Lcom/t4game/UPageLable;->bFocus:Z

    goto :goto_1

    :cond_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    goto :goto_1

    :cond_9
    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    const/4 v1, 0x3

    aget-short v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    const/4 v1, 0x3

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    goto/16 :goto_1

    :cond_a
    const/4 v0, -0x4

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v6

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->topAletIntroTick:B

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x30

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    if-eqz v0, :cond_f

    iget-byte v0, v0, Lcom/t4game/RoleSkill;->level:B

    int-to-short v0, v0

    :goto_2
    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->magicGeniusSelect:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-object v1, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    iget-short v1, v1, Lcom/t4game/GGeniusData;->iconImageId:S

    iput v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput v3, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sput-byte v3, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-ne v0, v4, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_d

    const/4 v0, -0x5

    if-ne p1, v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/t4game/Pet;->sendPetStudySkill(I)Z

    iput v3, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_e
    if-ne p1, v5, :cond_0

    iput v3, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_2
.end method

.method private pressedOfDialogPet(I)V
    .locals 7

    const/4 v3, -0x6

    const/4 v6, 0x2

    const/4 v2, -0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-nez v0, :cond_2

    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0, p1}, Lcom/t4game/UPageLable;->keyPressEvent(I)V

    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iget-boolean v0, v0, Lcom/t4game/UPageLable;->bFocus:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->getIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v1}, Lcom/t4game/UList;->bFocus()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-boolean v4, v1, Lcom/t4game/UPageLable;->bFocus:Z

    :cond_3
    iget-object v1, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v1}, Lcom/t4game/UList;->getCmd()I

    move-result v1

    if-ne v1, v6, :cond_5

    const/4 v1, -0x7

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_1

    :cond_4
    new-instance v0, Lcom/t4game/petChangeNameForm;

    const/16 v1, 0xc3d

    invoke-static {v5, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/t4game/petChangeNameForm;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v1, v0}, Lcom/t4game/StartGame;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v1}, Lcom/t4game/UList;->getCmd()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    invoke-virtual {v1}, Lcom/t4game/UList;->getCmd()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_6
    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_1

    :cond_7
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    new-array v2, v6, [Ljava/lang/String;

    const/16 v3, 0xc3e

    invoke-static {v5, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xc3f

    invoke-static {v5, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput v5, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    :pswitch_2
    iput v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v4, v4}, Lcom/t4game/Pet;->sendPetUpdateMsg(BB)Z

    iput-byte v4, p0, Lcom/t4game/Pet;->beNomalUpdate:B

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v5, v4}, Lcom/t4game/Pet;->sendPetUpdateMsg(BB)Z

    iput-byte v5, p0, Lcom/t4game/Pet;->beNomalUpdate:B

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-boolean v4, v0, Lcom/t4game/UPageLable;->bFocus:Z

    :cond_9
    if-eq p1, v3, :cond_a

    const/16 v0, 0x30

    if-ne p1, v0, :cond_e

    :cond_a
    move v0, v4

    move v1, v4

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x4

    aget v2, v2, v3

    if-lez v2, :cond_b

    move v1, v5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/t4game/Pet;->sendPetAddAttr()Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0xc40

    invoke-static {v5, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->getCmd()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/t4game/Pet;->attrPoint:I

    if-lez v1, :cond_f

    iget v1, p0, Lcom/t4game/Pet;->attrPoint:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/t4game/Pet;->attrPoint:I

    iget-object v1, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x4

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iget-object v1, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    iget-object v3, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v0, v4, v0

    const/4 v4, 0x4

    aget v0, v0, v4

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    aput v0, v1, v5

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0xc41

    invoke-static {v5, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->pressedOfDialogMagicGenius(I)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-boolean v4, v0, Lcom/t4game/UPageLable;->bFocus:Z

    :cond_10
    if-eq p1, v3, :cond_11

    if-ne p1, v2, :cond_1

    :cond_11
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    new-array v2, v6, [Ljava/lang/String;

    const/16 v3, 0x84b

    invoke-static {v5, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xc42

    invoke-static {v5, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_13

    iput v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_13
    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->getCmd()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petIndex:I

    iget v0, p0, Lcom/t4game/Pet;->petIndex:I

    int-to-byte v0, v0

    invoke-direct {p0, v4, v0, v4}, Lcom/t4game/Pet;->sendPetChange(BBB)Z

    iput v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_14
    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->getCmd()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petIndex:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/Pet;->beUsePet:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/t4game/Pet;->petIndex:I

    int-to-byte v0, v0

    invoke-direct {p0, v5, v0, v4}, Lcom/t4game/Pet;->sendPetChange(BBB)Z

    iput v4, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private pressedOfDialogPetAutoAttackList(I)V
    .locals 7

    const/4 v3, -0x6

    const/4 v2, -0x7

    const/16 v6, -0x64

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->functionPressedUDLR(B)V

    const/16 v0, 0x31

    if-lt p1, v0, :cond_4

    const/16 v0, 0x35

    if-gt p1, v0, :cond_4

    const/16 v0, 0x31

    sub-int v0, p1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v2, v2, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v1, v1, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickIcon:[I

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v3, v3, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v2, v2, v3

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v3, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v3, v3, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v2, v2, v3

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aget v1, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickIconH:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickIconH:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v2, v2, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v1, v1, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    aput v2, v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto/16 :goto_0

    :cond_4
    if-ne p1, v2, :cond_6

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->clearAlertScrossMessage(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gotoDialogFlag:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_6
    if-eq p1, v3, :cond_7

    const/4 v0, -0x5

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v0, v0, v1

    if-eq v0, v6, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v0, v0, v1

    move v1, v4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v3, v3, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v3, v3, Lcom/t4game/RoleSkillList;->id:[S

    aget-short v3, v3, v1

    if-ne v0, v3, :cond_9

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v2, v2, v1

    aget-short v2, v2, v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    int-to-short v0, v0

    invoke-virtual {v1, v0, v2}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->pageOfDialog:B

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickID:[I

    iget-object v2, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v2, v2, Lcom/t4game/GameScreen;->pageOfDialog:B

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v0, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-short v0, v0, Lcom/t4game/GGeniusData;->iconImageId:S

    iput v0, v1, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput v4, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const-string v1, ""

    iput-object v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, v5

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput v6, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    :goto_2
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput v4, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v5

    iget-short v1, v1, Lcom/t4game/RoleOutfit;->iconId:S

    iput v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_e

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :cond_e
    if-eq p1, v3, :cond_f

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    :cond_f
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->clearAlertScrossMessage(B)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/Pet;->sendPetQuickUse()Z

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0
.end method

.method private pressedOfDialogPetSkillList(I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    :cond_2
    const/4 v0, -0x6

    if-eq p1, v0, :cond_3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_3

    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    invoke-virtual {v0}, Lcom/t4game/RoleSkillList;->release()V

    :cond_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput-object v1, v0, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_5
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sget v0, Lcom/t4game/GameScreen;->fromType:I

    sget v1, Lcom/t4game/TianTian;->fromTiantian:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_List(I)Lcom/t4game/UI_List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    iput-object v2, v1, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->id:[S

    aget-short v2, v2, v0

    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v3, v3, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->id:[S

    aget-short v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/t4game/GameWorld;->magicGeniusSelect:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v2, v2, Lcom/t4game/RoleSkillList;->iconId:[S

    aget-short v0, v2, v0

    iput v0, v1, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iput v4, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    sput-byte v4, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    goto/16 :goto_0
.end method

.method private processPetAddAttr()V
    .locals 15

    const v1, 0xffc700

    const/4 v5, -0x1

    const v3, 0xff00

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v6, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v6}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v0, v2

    :goto_1
    const/4 v6, 0x5

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v8, v6, v7

    iget-object v9, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v9, v9, v0

    const/4 v10, 0x4

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x4

    aput v2, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxMp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v12

    iget-object v0, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    iget-object v13, v0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc43

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petHp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "/"

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMaxHp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v2

    iget-object v0, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    iget-object v13, v0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc44

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "/"

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMaxMp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v4

    const/4 v0, 0x2

    move v13, v0

    :goto_2
    add-int/lit8 v0, v12, 0x2

    if-ge v13, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    iget-object v14, v7, Lcom/t4game/UList;->str:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v13

    add-int/lit8 v0, v13, 0x1

    int-to-byte v0, v0

    move v13, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0xc45

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processPetChange()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/Pet;->beUsePet:B

    iget-object v1, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/Pet;->beUsePet:B

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    iget v1, p0, Lcom/t4game/Pet;->petIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Pet;->beUsePet:B

    if-nez v0, :cond_1

    iget v0, p0, Lcom/t4game/Pet;->petIndex:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    iget v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget v1, p0, Lcom/t4game/Pet;->petNextImgID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0x273

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processPetChangeName()V
    .locals 15

    const v3, 0xff00

    const/4 v14, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->tempPetName:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    iget-object v12, v0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iget-object v13, p0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc30

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const v1, 0xffc700

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    move v7, v5

    move v8, v4

    move v9, v3

    move v10, v4

    move v11, v4

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v14

    aput-object v0, v12, v14

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    return-void
.end method

.method private processPetDialog()V
    .locals 15

    const v1, 0xffc700

    const/4 v5, -0x1

    const v3, 0xff00

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v6, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v6}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petImgID:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petGrade:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->curExp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->nextExp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Pet;->petColor:B

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Pet;->petLastColor:B

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petStarNum:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->cur:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->totle:I

    const/4 v0, 0x5

    const/4 v6, 0x5

    filled-new-array {v0, v6}, [I

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/Pet;->petAttr:[[I

    move v0, v2

    :goto_0
    const/4 v6, 0x5

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v7}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v7

    aput v7, v6, v2

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v8}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v8}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-int/2addr v7, v8

    aput v7, v6, v4

    iget-object v6, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x4

    aput v2, v6, v7

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->attrPoint:I

    iget v0, p0, Lcom/t4game/Pet;->attrPoint:I

    iput v0, p0, Lcom/t4game/Pet;->lastAttrPoint:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxMp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v12

    add-int/lit8 v0, v12, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    iget-object v13, p0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc43

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petHp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "/"

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMaxHp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v2

    iget-object v13, p0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc44

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "/"

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/t4game/Pet;->petMaxMp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v4

    const/4 v0, 0x2

    move v13, v0

    :goto_1
    add-int/lit8 v0, v12, 0x2

    if-ge v13, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    iget-object v14, p0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v13

    add-int/lit8 v0, v13, 0x1

    int-to-byte v0, v0

    move v13, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Pet;->strList4:[Ljava/lang/String;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/Pet;->objidList4:[I

    move v1, v2

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v5, p0, Lcom/t4game/Pet;->strList4:[Ljava/lang/String;

    iget-object v6, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/t4game/Pet;->objidList4:[I

    iget-object v6, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    iget-object v5, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    if-ne v5, v4, :cond_2

    iput-byte v3, p0, Lcom/t4game/Pet;->curUsePetIndex:B

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iput-byte v2, p0, Lcom/t4game/Pet;->beUsePet:B

    :goto_3
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x29

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    return-void

    :cond_4
    iput-byte v4, p0, Lcom/t4game/Pet;->beUsePet:B

    goto :goto_3
.end method

.method private processPetQuickUse()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aget v2, v2, v0

    aput v2, v1, v0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Pet;->petQuickIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    return-void
.end method

.method private processPetStudySkill()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget v1, p0, Lcom/t4game/Pet;->skillPoint:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/t4game/Pet;->skillPoint:I

    if-ne v0, v4, :cond_3

    iget-object v1, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v2, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/t4game/GGeniusTreeData;->getGeniusData(Ljava/lang/String;)Lcom/t4game/GGeniusData;

    move-result-object v1

    new-instance v2, Lcom/t4game/RoleSkill;

    invoke-direct {v2}, Lcom/t4game/RoleSkill;-><init>()V

    iget-object v3, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, v2, Lcom/t4game/RoleSkill;->id:S

    iget-object v3, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    iput-object v3, v2, Lcom/t4game/RoleSkill;->stringId:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/RoleSkill;->actionType:B

    iget-short v3, v1, Lcom/t4game/GGeniusData;->iconImageId:S

    iput-short v3, v2, Lcom/t4game/RoleSkill;->iconId:S

    iget-object v3, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    iget-byte v1, v1, Lcom/t4game/GGeniusData;->maxPoint:B

    int-to-short v1, v1

    iput-short v1, v2, Lcom/t4game/RoleSkill;->maxLevel:S

    iget-byte v1, v2, Lcom/t4game/RoleSkill;->actionType:B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/t4game/Pet;->petQuickID:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/t4game/Pet;->petQuickID:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/t4game/Pet;->petQuickID:[I

    iget-short v4, v2, Lcom/t4game/RoleSkill;->id:S

    aput v4, v3, v1

    iget-object v3, p0, Lcom/t4game/Pet;->petQuickIcon:[I

    iget-short v4, v2, Lcom/t4game/RoleSkill;->iconId:S

    aput v4, v3, v1

    :cond_0
    iput-byte v0, v2, Lcom/t4game/RoleSkill;->level:B

    iget-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v1, v2, Lcom/t4game/RoleSkill;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/RoleSkill;

    iput-byte v0, p0, Lcom/t4game/RoleSkill;->level:B

    goto :goto_1
.end method

.method private processPetUpdate()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v6, :cond_0

    iget-object v3, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v4, 0x270

    invoke-virtual {v3, v2, v4}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Pet;->petColor:B

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Pet;->petLastColor:B

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petStarNum:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->cur:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->totle:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petImgID:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petNextImgID:I

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget v3, p0, Lcom/t4game/Pet;->petImgID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget v3, p0, Lcom/t4game/Pet;->petNextImgID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->attrPoint:I

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :cond_2
    iput v5, p0, Lcom/t4game/Pet;->viewStateOfDialog:I

    return-void
.end method

.method private processPethpMessage()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Pet;->bShowPet:B

    iget-byte v0, p0, Lcom/t4game/Pet;->bShowPet:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petGrade:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petHp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMaxMp:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petMp:I

    :cond_0
    return-void
.end method

.method private processSkillPoint()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->skillPoint:I

    return-void
.end method

.method private readPetSkill(Lcom/t4game/IoBuffer;)V
    .locals 5

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lcom/t4game/RoleSkill;

    invoke-direct {v1}, Lcom/t4game/RoleSkill;-><init>()V

    iput-short v0, v1, Lcom/t4game/RoleSkill;->id:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, v1, Lcom/t4game/RoleSkill;->maxLevel:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, v1, Lcom/t4game/RoleSkill;->limitLevel:S

    iget-short v0, v1, Lcom/t4game/RoleSkill;->id:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/t4game/RoleSkill;->stringId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, v1, Lcom/t4game/RoleSkill;->actionType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, v1, Lcom/t4game/RoleSkill;->level:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, v1, Lcom/t4game/RoleSkill;->iconId:S

    iget-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/t4game/RoleSkill;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private sendPetChange(BBB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/Pet;->petIndex:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x273

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method private sendPetStudySkill(I)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x272

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method private sendPetUpdateMsg(BB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x270

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearPetSkill()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, -0x64

    iget-object v0, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v3, v3, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_1
    iget-object v1, p0, Lcom/t4game/Pet;->petQuickID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickID:[I

    aput v4, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIcon:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    aput v4, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aput v4, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIconShow:[I

    aput v5, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->draw2DialogPetSkillList(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->draw2DialogPetAutoAttackList(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->drawPet(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x29
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawGeniusTree(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GGeniusTreeData;Ljava/util/Hashtable;Ljava/lang/String;S)V
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v7, 0x168

    const/4 v8, 0x5

    const/16 v9, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v10, v0

    add-int/lit8 v9, v9, 0x18

    mul-int/lit8 v8, v8, 0x36

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v8, v0

    const/16 v8, 0x18

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v6, 0x21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "\u67e5\u770b"

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v7, v0

    add-int/lit8 v7, v7, 0x5

    sget v8, Lcom/t4game/Defaults;->CANVAS_W:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentH:I

    move v9, v0

    const/16 v10, 0x14

    sub-int/2addr v9, v10

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/t4game/GGeniusData;

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->columnIndex:B

    move v6, v0

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->rowIndex:B

    move v6, v0

    mul-int/lit8 v7, v6, 0x14

    add-int/2addr v7, v5

    sget v8, Lcom/t4game/Defaults;->dialogBodyHight:I

    const/16 v9, 0x32

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_b

    mul-int/lit8 v6, v6, 0x14

    add-int/2addr v6, v5

    sget v7, Lcom/t4game/Defaults;->dialogBodyHight:I

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    move v14, v5

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    move-object v5, v0

    array-length v5, v5

    if-ge v6, v5, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    move-object v5, v0

    aget-object v7, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-short v8, v7, Lcom/t4game/GGeniusData;->iconImageId:S

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/lcdui/Image;

    iget-byte v8, v7, Lcom/t4game/GGeniusData;->columnIndex:B

    iget-byte v5, v7, Lcom/t4game/GGeniusData;->rowIndex:B

    mul-int/lit8 v9, v8, 0x1e

    add-int/2addr v9, v13

    mul-int/lit8 v5, v5, 0x14

    add-int v10, v14, v5

    const/16 v5, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v11

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    iget-object v5, v7, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move v11, v5

    :goto_2
    iget-object v5, v7, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v11, v5, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    move-object v5, v0

    iget-object v12, v7, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v5, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/t4game/GGeniusData;

    iget-byte v12, v5, Lcom/t4game/GGeniusData;->columnIndex:B

    iget-byte v15, v5, Lcom/t4game/GGeniusData;->rowIndex:B

    mul-int/lit8 v16, v12, 0x1e

    add-int v16, v16, v13

    mul-int/lit8 v15, v15, 0x14

    add-int/2addr v15, v14

    if-ne v8, v12, :cond_0

    add-int/lit8 v5, v9, 0x5

    add-int/lit8 v12, v10, 0x1e

    const/16 v17, 0x6

    sub-int v18, v15, v10

    const/16 v19, 0x1a

    sub-int v18, v18, v19

    move-object/from16 v0, p1

    move v1, v5

    move v2, v12

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v5, 0x0

    :goto_3
    const/4 v12, 0x6

    if-ge v5, v12, :cond_3

    add-int/lit8 v12, v16, 0x2

    add-int/2addr v12, v5

    const/16 v17, 0xa

    sub-int v17, v15, v17

    add-int v17, v17, v5

    add-int/lit8 v18, v16, 0xd

    sub-int v18, v18, v5

    const/16 v19, 0xa

    sub-int v19, v15, v19

    add-int v19, v19, v5

    move-object/from16 v0, p1

    move v1, v12

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    iget-byte v12, v5, Lcom/t4game/GGeniusData;->columnIndex:B

    move-object v0, v7

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->columnIndex:B

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    const/4 v12, -0x1

    :goto_4
    iget-byte v5, v5, Lcom/t4game/GGeniusData;->columnIndex:B

    move-object v0, v7

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->rowIndex:B

    move/from16 v17, v0

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v13

    mul-int/lit8 v17, v17, 0x14

    add-int v17, v17, v14

    const/16 v18, -0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    add-int/lit8 v12, v5, 0x5

    add-int/lit8 v18, v17, 0x6

    sub-int v19, v9, v5

    const/16 v20, 0x7

    sub-int v19, v19, v20

    const/16 v20, 0x6

    move-object/from16 v0, p1

    move v1, v12

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :goto_5
    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v12, v17, 0x7

    const/16 v18, 0x6

    sub-int v17, v15, v17

    const/16 v19, 0x7

    sub-int v17, v17, v19

    const/16 v19, 0x7

    sub-int v17, v17, v19

    move-object/from16 v0, p1

    move v1, v5

    move v2, v12

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v5, 0x0

    :goto_6
    const/4 v12, 0x6

    if-ge v5, v12, :cond_3

    add-int/lit8 v12, v16, 0x2

    add-int/2addr v12, v5

    const/16 v17, 0xa

    sub-int v17, v15, v17

    add-int v17, v17, v5

    add-int/lit8 v18, v16, 0xd

    sub-int v18, v18, v5

    const/16 v19, 0xa

    sub-int v19, v15, v19

    add-int v19, v19, v5

    move-object/from16 v0, p1

    move v1, v12

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_1
    const/4 v12, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v12, v9, 0x1e

    add-int/lit8 v18, v10, 0x6

    sub-int v19, v5, v9

    const/16 v20, 0x7

    sub-int v19, v19, v20

    const/16 v20, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x6

    move-object/from16 v0, p1

    move v1, v12

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    move v15, v5

    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    move-object v5, v0

    array-length v5, v5

    if-ge v15, v5, :cond_a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    move-object v5, v0

    aget-object v6, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-short v7, v6, Lcom/t4game/GGeniusData;->iconImageId:S

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/lcdui/Image;

    iget-byte v7, v6, Lcom/t4game/GGeniusData;->columnIndex:B

    iget-byte v8, v6, Lcom/t4game/GGeniusData;->rowIndex:B

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v7, v13

    mul-int/lit8 v8, v8, 0x14

    add-int/2addr v8, v14

    const/4 v9, 0x2

    sub-int v9, v7, v9

    const/4 v10, 0x2

    sub-int v10, v8, v10

    move v0, v9

    move v1, v10

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameScreen;->getOpenMagicGenius(Lcom/t4game/GGeniusData;Ljava/util/Hashtable;S)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v5, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v12

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->imageEffectBlackWhite(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :cond_6
    const/4 v5, 0x0

    move v0, v7

    move v1, v8

    move v2, v5

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :goto_8
    add-int/lit8 v5, v15, 0x1

    move v15, v5

    goto :goto_7

    :cond_7
    if-eqz v5, :cond_8

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    move v3, v8

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    move-object v5, v0

    aget-object v5, v5, v15

    iget-object v5, v5, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/t4game/RoleSkill;

    check-cast v5, Lcom/t4game/RoleSkill;

    if-eqz v5, :cond_9

    iget-byte v5, v5, Lcom/t4game/RoleSkill;->level:B

    move v0, v7

    move v1, v8

    move v2, v5

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    move v0, v7

    move v1, v8

    move v2, v5

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_8

    :cond_a
    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->columnIndex:B

    move v5, v0

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v13

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/GGeniusData;->rowIndex:B

    move v6, v0

    mul-int/lit8 v6, v6, 0x14

    add-int/2addr v6, v14

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void

    :cond_b
    move v14, v5

    goto/16 :goto_0
.end method

.method public drawPetSelected(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x1e

    const/4 v5, 0x0

    const/16 v0, 0x36

    iget-byte v1, p0, Lcom/t4game/Pet;->bShowPet:B

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x61

    const/16 v2, 0x37

    const/16 v3, 0x29

    invoke-virtual {p1, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0x5

    const/16 v3, 0x20

    const/16 v4, 0xb

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0xf6

    const/16 v2, 0xec

    const/16 v3, 0xa7

    invoke-virtual {p1, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0x6

    const/16 v3, 0x9

    invoke-virtual {p1, v1, v2, v6, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0x36

    const/16 v2, 0x25

    const/16 v3, 0x2b

    invoke-virtual {p1, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p1, v1, v2, v6, v9}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0xc7

    const/16 v2, 0xbb

    const/16 v3, 0x7f

    invoke-virtual {p1, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0xa

    invoke-virtual {p1, v1, v2, v6, v7}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0xf6

    const/16 v2, 0xec

    const/16 v3, 0xa7

    invoke-virtual {p1, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0x2d

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p1, v1, v2, v7, v9}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0xe6

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v5, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0x7

    iget v3, p0, Lcom/t4game/Pet;->petHp:I

    mul-int/lit8 v3, v3, 0x1e

    iget v4, p0, Lcom/t4game/Pet;->petMaxHp:I

    div-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v8}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0x68

    const/16 v2, 0xb7

    invoke-virtual {p1, v5, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, v5, 0xf

    add-int/lit8 v2, v0, 0xb

    iget v3, p0, Lcom/t4game/Pet;->petMp:I

    mul-int/lit8 v3, v3, 0x1e

    iget v4, p0, Lcom/t4game/Pet;->petMaxMp:I

    div-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v8}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const v1, 0x353734

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-virtual {p1, v5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    sget-object v1, Lcom/t4game/Pet;->imgHead:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v5, v0, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v5, v5, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    add-int/lit8 v1, v5, 0x15

    iget v2, p0, Lcom/t4game/Pet;->petGrade:I

    invoke-static {v1, v0, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0
.end method

.method public getContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "/ui/pet.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/Pet;->imgHead:Ljavax/microedition/lcdui/Image;

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIcon:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIcon:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickID:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIconShow:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIconShow:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public initDialog(I)V
    .locals 20

    const/16 v2, -0x27

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GameWorld;->refreshPetSkillList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameWorld;->AlertScrossMessageV:[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v3, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "\u9009\u4e2d\u76ee\u6807\u6309\u5bf9\u5e94\u7684\u6570\u5b57\u952e\u66f4\u65b0\u5feb\u6377\u680f"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v3

    iget-object v3, v3, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    new-array v3, v3, [S

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/t4game/RoleSkill;

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/t4game/RoleSkill;->iconId:S

    move v6, v0

    aput-short v6, v3, v5

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/t4game/RoleSkill;->actionType:B

    move v6, v0

    if-nez v6, :cond_0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickIcon:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickID:[I

    const/4 v5, 0x0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v6

    iget v6, v6, Lcom/t4game/Pet;->PET_NOMALATTACKID:I

    aput v6, v4, v5

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget-object v5, v5, Lcom/t4game/Pet;->petQuickIcon:[I

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/t4game/RoleSkill;

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/t4game/RoleSkill;->iconId:S

    move v7, v0

    aput v7, v5, v6

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget-object v5, v5, Lcom/t4game/Pet;->petQuickID:[I

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/t4game/RoleSkill;

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/t4game/RoleSkill;->id:S

    move v7, v0

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickCurIconShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget-object v5, v5, Lcom/t4game/Pet;->petQuickIconShow:[I

    aget v5, v5, v2

    aput v5, v4, v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v4

    iget-object v4, v4, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v5

    iget-object v5, v5, Lcom/t4game/Pet;->petQuickIDShow:[I

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const/16 v2, -0x28

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GameWorld;->refreshPetSkillList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v2}, Lcom/t4game/GameUi;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    new-instance v3, Lcom/t4game/GameUi;

    invoke-direct {v3}, Lcom/t4game/GameUi;-><init>()V

    iput-object v3, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const-string v3, "/data/ui/TSS2C_List.bin"

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v2}, Lcom/t4game/GameUi;->autoLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v3, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameScreen;->getUI_List(I)Lcom/t4game/UI_List;

    move-result-object v15

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x16a

    invoke-static {v4, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x561

    invoke-static {v4, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x770d0f

    const v4, 0xffc700

    invoke-virtual {v15, v2, v3, v4}, Lcom/t4game/UI_List;->setTitle([Ljava/lang/String;II)V

    const/4 v2, 0x3

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x6ad

    invoke-static {v3, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x6f1

    invoke-static {v3, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x16b

    invoke-static {v3, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    const v3, 0xffffff

    aput v3, v4, v2

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_9

    invoke-virtual {v15}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move v0, v2

    new-array v0, v0, [Lcom/t4game/ListItem;

    move-object/from16 v18, v0

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->actTionType:[B

    aget-byte v6, v6, v17

    aget-object v6, v16, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_5
    invoke-virtual {v15}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move/from16 v0, v19

    move v1, v2

    if-ge v0, v1, :cond_8

    new-instance v2, Lcom/t4game/ListItem;

    invoke-direct {v2}, Lcom/t4game/ListItem;-><init>()V

    aput-object v2, v18, v19

    if-nez v19, :cond_7

    aget-object v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v3, v3, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->iconId:[S

    aget-short v6, v6, v17

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    :goto_6
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_5

    :cond_7
    aget-object v6, v18, v19

    const/4 v7, 0x0

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v8, v0

    iget-object v8, v8, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v8, v8, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v8, v8, v17

    const/4 v10, 0x0

    aget-short v8, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v8, v0

    iget-object v8, v8, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v8, v8, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v8, v8, v17

    const/4 v10, 0x1

    aget-short v8, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v4

    invoke-virtual/range {v6 .. v14}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    goto :goto_6

    :cond_8
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v15, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v3, 0x2

    iput-byte v3, v2, Lcom/t4game/GameUi;->commandType:B

    goto/16 :goto_3

    :cond_a
    const/16 v2, -0x3e7

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GameWorld;->refreshPetSkillList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v2}, Lcom/t4game/GameUi;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    new-instance v3, Lcom/t4game/GameUi;

    invoke-direct {v3}, Lcom/t4game/GameUi;-><init>()V

    iput-object v3, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const-string v3, "/data/ui/TSS2C_List.bin"

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v3, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameScreen;->getUI_List(I)Lcom/t4game/UI_List;

    move-result-object v15

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u6280\u80fd\u540d\u79f0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u7b49\u7ea7"

    aput-object v4, v2, v3

    const v3, 0x770d0f

    const v4, 0xffc700

    invoke-virtual {v15, v2, v3, v4}, Lcom/t4game/UI_List;->setTitle([Ljava/lang/String;II)V

    const/4 v2, 0x3

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "\u4e3b"

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "\u88ab"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "\u5149\u73af"

    aput-object v3, v16, v2

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    const v3, 0xffffff

    aput v3, v4, v2

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_7
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Pet;->skillList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_e

    invoke-virtual {v15}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move v0, v2

    new-array v0, v0, [Lcom/t4game/ListItem;

    move-object/from16 v18, v0

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->actTionType:[B

    aget-byte v6, v6, v17

    aget-object v6, v16, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_8
    invoke-virtual {v15}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move/from16 v0, v19

    move v1, v2

    if-ge v0, v1, :cond_d

    new-instance v2, Lcom/t4game/ListItem;

    invoke-direct {v2}, Lcom/t4game/ListItem;-><init>()V

    aput-object v2, v18, v19

    if-nez v19, :cond_c

    aget-object v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v3, v3, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v6, v6, Lcom/t4game/RoleSkillList;->iconId:[S

    aget-short v6, v6, v17

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    :goto_9
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_8

    :cond_c
    aget-object v6, v18, v19

    const/4 v7, 0x0

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v8, v0

    iget-object v8, v8, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v8, v8, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v8, v8, v17

    const/4 v10, 0x0

    aget-short v8, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v8, v0

    iget-object v8, v8, Lcom/t4game/GameWorld;->roleSkillList:Lcom/t4game/RoleSkillList;

    iget-object v8, v8, Lcom/t4game/RoleSkillList;->level:[[S

    aget-object v8, v8, v17

    const/4 v10, 0x1

    aget-short v8, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v4

    invoke-virtual/range {v6 .. v14}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    goto :goto_9

    :cond_d
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v15, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v3, 0x2

    iput-byte v3, v2, Lcom/t4game/GameUi;->commandType:B

    goto/16 :goto_3

    :cond_f
    const/16 v2, -0x29

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_4

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Pet;->viewStateOfDialog:I

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->petImgID:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p1

    check-cast p1, Lcom/t4game/GObjectData;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->petNextImgID:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p1

    check-cast p1, Lcom/t4game/GObjectData;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v3, "1104"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p1

    check-cast p1, Lcom/t4game/GObjectData;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->objLoading:Lcom/t4game/GObjectData;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u57fa\u7840"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u6210\u957f"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u6280\u80fd"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u5316\u5f62"

    aput-object v4, v2, v3

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->strPage:[Ljava/lang/String;

    new-instance v2, Lcom/t4game/UPageLable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strPage:[Ljava/lang/String;

    move-object v3, v0

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    sget v6, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    const/16 v6, 0x168

    const/16 v7, 0x14

    invoke-direct/range {v2 .. v7}, Lcom/t4game/UPageLable;-><init>([Ljava/lang/String;IIII)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v2, v0

    iget v2, v2, Lcom/t4game/UPageLable;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v3, v0

    iget v3, v3, Lcom/t4game/UPageLable;->h:I

    add-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Pet;->plContentY:I

    const/16 v2, 0xe8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v3, v0

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Pet;->plContentH:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u54c1\u8d28:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v2, ""

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    const-string v2, "\u6218\u5ba0\u51b2\u7ea7\u9636\u6bb5:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540d\u79f0:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u7ea7:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->petGrade:I

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7ecf\u9a8c:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->curExp:I

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u7ea7\u7ecf\u9a8c:"

    const v3, 0xffc700

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->nextExp:I

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xff00

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/t4game/CF;->getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    new-instance v2, Lcom/t4game/UList;

    invoke-direct {v2}, Lcom/t4game/UList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/t4game/UList;->setColorFont(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    move-object v3, v0

    const v4, 0xffc700

    invoke-virtual {v2, v3, v4}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/t4game/UList;->bFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v3, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentH:I

    move v5, v0

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentH:I

    move v6, v0

    shr-int/lit8 v6, v6, 0x1

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UList;->setPos(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/UList;->autoLayout()V

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    move-object v3, v0

    iget v3, v3, Lcom/t4game/UList;->x:I

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Pet;->expCommandW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentH:I

    move v3, v0

    shr-int/lit8 v3, v3, 0x1

    add-int v8, v2, v3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    const-string v4, "\u4f53\u529b:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x1

    const-string v4, "\u529b\u91cf:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x2

    const-string v4, "\u654f\u6377:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x3

    const-string v4, "\u9053\u672f:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x4

    const-string v4, "\u667a\u529b:"

    aput-object v4, v2, v3

    new-instance v2, Lcom/t4game/UList;

    invoke-direct {v2}, Lcom/t4game/UList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    move-object v3, v0

    const v4, 0xffc700

    invoke-virtual {v2, v3, v4}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/t4game/UList;->bFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v3, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v4, v0

    iget v4, v4, Lcom/t4game/UPageLable;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v5, v0

    iget v5, v5, Lcom/t4game/UPageLable;->h:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v5, v0

    iget v5, v5, Lcom/t4game/UPageLable;->w:I

    const/16 v6, 0x1c

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v6, v0

    sub-int v6, v8, v6

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UList;->setPos(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/UList;->autoLayout()V

    new-instance v2, Lcom/t4game/UList;

    invoke-direct {v2}, Lcom/t4game/UList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/t4game/UList;->setColorFont(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    move-object v3, v0

    const v4, 0xffffff

    invoke-virtual {v2, v3, v4}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/t4game/UList;->bFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v3, 0xe

    add-int/lit8 v4, v8, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v5, v0

    iget v5, v5, Lcom/t4game/UPageLable;->w:I

    const/16 v6, 0x1c

    sub-int/2addr v5, v6

    const/16 v6, 0xe8

    sub-int/2addr v6, v8

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UList;->setPos(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/UList;->autoLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->petGeniusData:Lcom/t4game/GGeniusData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->petGeniusTreeIndex:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    array-length v2, v2

    int-to-byte v2, v2

    new-array v3, v2, [S

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aget-object v5, v5, v4

    iget-short v5, v5, Lcom/t4game/GGeniusData;->iconImageId:S

    aput-short v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    move-object v2, v0

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objidList4:[I

    move-object v2, v0

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objidList4:[I

    move-object v2, v0

    array-length v2, v2

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objidList4:[I

    move-object v2, v0

    array-length v2, v2

    new-array v2, v2, [Lcom/t4game/GObjectData;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objidList4:[I

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    move-object v3, v0

    sget-byte v4, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->objidList4:[I

    move-object v5, v0

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p1

    check-cast p1, Lcom/t4game/GObjectData;

    aput-object p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_11
    new-instance v2, Lcom/t4game/UList;

    invoke-direct {v2}, Lcom/t4game/UList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/t4game/UList;->setColorFont(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Pet;->plContentH:I

    move v3, v0

    shr-int/lit8 v3, v3, 0x1

    add-int v6, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->strList4:[Ljava/lang/String;

    move-object v3, v0

    const v4, 0xffc700

    invoke-virtual {v2, v3, v4}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/t4game/UList;->bFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v3, 0xe

    add-int/lit8 v4, v6, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    move-object v5, v0

    iget v5, v5, Lcom/t4game/UPageLable;->w:I

    const/16 v7, 0x1c

    sub-int/2addr v5, v7

    const/16 v7, 0xe8

    sub-int v6, v7, v6

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UList;->setPos(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/UList;->autoLayout()V

    goto/16 :goto_3
.end method

.method public keyEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->pressedOfDialogPetSkillList(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->pressedOfDialogPetAutoAttackList(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/Pet;->pressedOfDialogPet(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x29
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pointerEvent()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/Pet;->pointerOfDialogPetAutoAttackList()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-boolean v0, v0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->keyPressed(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x29
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pressedAlert(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/Pet;->beNomalUpdate:B

    invoke-direct {p0, v0, v2}, Lcom/t4game/Pet;->sendPetUpdateMsg(BB)Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget v1, p0, Lcom/t4game/Pet;->petIndex:I

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/t4game/Pet;->sendPetChange(BBB)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x270
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public processMsg(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/Pet;->processPethpMessage()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/Pet;->processPetSkillMessage()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetQuickUse()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/Pet;->processSkillPoint()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetDialog()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetChangeName()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetUpdate()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetAddAttr()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetChange()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/t4game/Pet;->processPetStudySkill()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x26b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public processPetSkillMessage()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->readGeniusTree(Lcom/t4game/IoBuffer;)Lcom/t4game/GGeniusTreeData;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Pet;->petGeniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    int-to-short v0, v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-direct {p0, v2}, Lcom/t4game/Pet;->readPetSkill(Lcom/t4game/IoBuffer;)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    iget-object v3, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/Pet;->petQuickIconShow:[I

    iget-object v3, p0, Lcom/t4game/Pet;->petQuickIDShow:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/t4game/Pet;->findIconIDByID(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->skillPoint:I

    iget-object v0, p0, Lcom/t4game/Pet;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Pet;->petGrade:I

    return-void
.end method

.method public released()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/t4game/Pet;->imgHead:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    sput-object v2, Lcom/t4game/Pet;->imgHead:Ljavax/microedition/lcdui/Image;

    :cond_0
    iput-object v2, p0, Lcom/t4game/Pet;->strList1:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Pet;->strList2:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Pet;->strList3:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Pet;->strList4:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Pet;->objidList4:[I

    iput-object v2, p0, Lcom/t4game/Pet;->strPage:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Pet;->list1:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list2:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list3:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->list4:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/Pet;->page:Lcom/t4game/UPageLable;

    iput-object v2, p0, Lcom/t4game/Pet;->objLoading:Lcom/t4game/GObjectData;

    iput-object v2, p0, Lcom/t4game/Pet;->objNextPet:Lcom/t4game/GObjectData;

    iput-object v2, p0, Lcom/t4game/Pet;->objPet:Lcom/t4game/GObjectData;

    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/Pet;->petAttr:[[I

    iput-object v2, p0, Lcom/t4game/Pet;->objPets:[Lcom/t4game/GObjectData;

    return-void
.end method

.method public sendPetAddAttr()Z
    .locals 4

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/Pet;->petAttr:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putInt(I)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x271

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendPetChangeNameMsg(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x26f

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendPetDialogMsg()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x26b

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendPetQuickUse()Z
    .locals 4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/Pet;->petQuickCurIDShow:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x26e

    iget-object v2, p0, Lcom/t4game/Pet;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method
