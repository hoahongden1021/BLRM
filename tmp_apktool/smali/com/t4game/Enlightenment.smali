.class public Lcom/t4game/Enlightenment;
.super Ljava/lang/Object;


# static fields
.field public static final ID_Dialog_Enlightenmen_Award_Info:B = 0x6t

.field public static final ID_Dialog_Enlightenment_Main:B = 0x1t

.field public static final ID_Dialog_Insight_Info:B = 0x3t

.field public static final ID_Dialog_Insight_Main:B = 0x2t

.field public static final ID_Dialog_Main:B = 0x0t

.field public static final ID_Dialog_Skill_Stu:B = 0x4t

.field public static final ID_Dialog_Skill_Study_Book:B = 0x5t

.field private static enlightenment:Lcom/t4game/Enlightenment;

.field private static final nameOfEnlightenmentStrings:[Ljava/lang/String;


# instance fields
.field private Award_Content:[Ljava/lang/String;

.field private Award_state:B

.field private Award_stateContent:Ljava/lang/String;

.field private Enlightenment_Content:Ljava/lang/String;

.field private Enlightenment_Count:B

.field private Enlightenment_Icon:[I

.field private Enlightenment_Level:Ljava/lang/String;

.field private Enlightenment_Page:B

.field private Enlightenment_State_Content:[Ljava/lang/String;

.field private Enlightenment_Total:B

.field private attribute:[Ljava/lang/String;

.field private attributeColor:[I

.field private attributeContent:Ljava/lang/String;

.field private attributeDegree:Ljava/lang/String;

.field private attributeInfo:Ljava/lang/String;

.field private attributeLayer:Ljava/lang/String;

.field private attributeSkillPoint:I

.field private attributeVigor:I

.field private dialogId:B

.field protected gs:Lcom/t4game/GameScreen;

.field protected gw:Lcom/t4game/GameWorld;

.field private mainMenu:Ljavax/microedition/lcdui/Image;

.field private menu:Lcom/t4game/UI_Menu;

.field private nextPotential:[I

.field private potentialImg:Ljavax/microedition/lcdui/Image;

.field private potenttialNum:[I

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private selectedContentIndex:B

.field private selectedMenuIndex:B

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private show_buy_point_state:B

.field private size:B

.field private skillContent:[Ljava/lang/String;

.field private skillContentLine:I

.field private skillExp:[I

.field private skillImg:[I

.field private skillLayer:[I

.field private skillName:[Ljava/lang/String;

.field private skillNextContent:[Ljava/lang/String;

.field private skillPoint:I

.field private tempLine:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/Enlightenment;->enlightenment:Lcom/t4game/Enlightenment;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u609f\u9053\u7a0b\u5ea6"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u987f\u609f\u5b66\u4e60"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6280\u80fd\u52a0\u70b9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/Enlightenment;->nameOfEnlightenmentStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->tempLine:B

    return-void
.end method

.method public static getInstance()Lcom/t4game/Enlightenment;
    .locals 1

    sget-object v0, Lcom/t4game/Enlightenment;->enlightenment:Lcom/t4game/Enlightenment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/Enlightenment;

    invoke-direct {v0}, Lcom/t4game/Enlightenment;-><init>()V

    sput-object v0, Lcom/t4game/Enlightenment;->enlightenment:Lcom/t4game/Enlightenment;

    :cond_0
    sget-object v0, Lcom/t4game/Enlightenment;->enlightenment:Lcom/t4game/Enlightenment;

    return-object v0
.end method

.method private processMsgBuyDialog()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    if-lez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/t4game/UI_Menu;

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    :cond_1
    return-void
.end method

.method private processMsgEnlightenmentDialog()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Level:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Page:B

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Total:B

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Count:B

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Content:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->Award_state:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->Award_state:B

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v0, v1, :cond_3

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    :cond_3
    move v0, v3

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->Award_stateContent:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_7

    :cond_6
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    :cond_7
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v4}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    return-void
.end method

.method private processMsgInsightDialog()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attributeInfo:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    :goto_0
    iput-byte v3, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v0, v1, :cond_3

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v0, v1, :cond_5

    :cond_4
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    :cond_5
    move v0, v3

    :goto_2
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attributeLayer:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attributeContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->attributeDegree:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Enlightenment;->attributeVigor:I

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Enlightenment;->attributeSkillPoint:I

    invoke-virtual {p0, v4}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    goto/16 :goto_0
.end method

.method private processMsgStudySkillDialog()V
    .locals 5

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-lez v1, :cond_11

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_1

    :cond_0
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_3

    :cond_2
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    :cond_3
    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_5

    :cond_4
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    :cond_5
    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_7

    :cond_6
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    :cond_7
    iget-object v1, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_9

    :cond_8
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    :cond_9
    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_b

    :cond_a
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    :cond_b
    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_d

    :cond_c
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    :cond_d
    iget-object v1, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-eq v1, v2, :cond_f

    :cond_e
    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    :cond_f
    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Enlightenment;->size:B

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_10
    iget-object v1, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/Enlightenment;->skillPoint:I

    :cond_11
    if-nez v0, :cond_12

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    :cond_12
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 5

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawMainMenuDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawEnlightenmentMenuDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawInsightMenuDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawInsightInfo(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawSkillMenuDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_5
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    invoke-virtual {p0, p1, v0}, Lcom/t4game/Enlightenment;->drawSkillStudyBook(Ljavax/microedition/lcdui/Graphics;B)V

    const/4 v0, 0x0

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v4, 0x24

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->drawEnlightenmentAwardInfo(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public drawEnlightenmentAwardInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const v6, 0xffc700

    const/16 v4, 0x168

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v1, "\u5956\u52b1\u8be6\u60c5"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    move v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    return-void
.end method

.method public drawEnlightenmentMenuDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v1, "\u609f\u9053\u7a0b\u5ea6"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u609f\u9053\u7a0b\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Page:B

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->Enlightenment_Total:B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v3, v0

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v4, v0

    const/16 v0, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    sget v6, Lcom/t4game/Defaults;->sfh:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Count:B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u987f\u609f\u5b66\u4e60"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\uff0c\u8fdb\u5165\u4e0b\u4e00\u609f\u9053\u7a0b\u5ea6\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Content:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->tempLine:B

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v6, v0

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->Award_state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v6, :cond_2

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    add-int v0, v6, v7

    int-to-byte v0, v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    if-ge v1, v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    move v8, v0

    :goto_1
    const v0, 0x764e00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v1, 0x1

    sub-int v1, v6, v1

    if-ge v0, v1, :cond_3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    add-int/lit8 v5, v5, 0x3

    iget-byte v9, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v5, v9

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_2
    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_3
    if-ge v7, v8, :cond_5

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v6, :cond_4

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v7, 0x3

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v0, v0, v7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    iget-object v3, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v7, 0x3

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    :cond_1
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v6, 0x3

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    iget-byte v9, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v5, v9

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v5, 0x1

    sub-int v5, v6, v5

    sub-int/2addr v4, v5

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, 0x3

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v0, v0, v7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    iget-object v3, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v5, 0x1

    sub-int v5, v6, v5

    sub-int/2addr v4, v5

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, 0x3

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v0

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0x168

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    iget-byte v6, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v6, v6, 0x3

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0xc8

    sget v6, Lcom/t4game/Defaults;->sfh:I

    iget-byte v7, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v7, v7, 0x3

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_5
    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/t4game/Enlightenment;->Award_stateContent:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_5

    :cond_7
    move v8, v0

    goto/16 :goto_1
.end method

.method public drawInsightInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const v6, 0xffc700

    const/16 v4, 0x168

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v1, "\u987f\u609f\u5c5e\u6027\u8be6\u60c5"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attributeInfo:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    move v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    return-void
.end method

.method public drawInsightMenuDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v0, "\u987f\u609f\u5b66\u4e60"

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5fc3\u5883\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attributeLayer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v2, v2, 0xc8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v1, 0x1

    sub-int v1, v7, v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    const/16 v4, 0xb4

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int v1, v7, v0

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v2, v2

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v1, v1

    int-to-byte v1, v1

    move v8, v1

    :goto_2
    const v1, 0xffc700

    move v9, v0

    move v0, v1

    :goto_3
    if-ge v9, v8, :cond_5

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    aget v1, v1, v9

    packed-switch v1, :pswitch_data_0

    move v5, v0

    :goto_4
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v7, :cond_3

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    const/16 v3, 0xb4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_5
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v5

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/4 v5, 0x1

    sub-int v5, v7, v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    const/16 v4, 0xb4

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :pswitch_0
    const v0, 0xffc700

    move v5, v0

    goto :goto_4

    :pswitch_1
    sget-object v0, Lcom/t4game/Defaults;->StringFightAtrrbuiteColor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    move v5, v0

    goto :goto_4

    :pswitch_2
    const v0, 0x808080

    move v5, v0

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_5

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v6, 0x1

    sub-int v6, v7, v6

    sub-int/2addr v4, v6

    sub-int v4, v9, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    const/16 v3, 0xb4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v6, 0x1

    sub-int v6, v7, v6

    sub-int/2addr v4, v6

    sub-int v4, v9, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    const/16 v3, 0xe

    sub-int v3, v1, v3

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0xc0

    move v1, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v5, 0xc8

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    add-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x23

    const/16 v4, 0xb4

    const/4 v6, 0x6

    sub-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cbe\u529b\u503c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Enlightenment;->attributeVigor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v2, v2, 0xc8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attributeContent:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xd0

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0xb4

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v1, v1, 0xc8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x168

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v3, v3, 0xc8

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u609f\u9053\u7a0b\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attributeDegree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v2, v2, 0xc8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6280\u80fd\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Enlightenment;->attributeSkillPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v2, v2, 0xc8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_6
    return-void

    :cond_7
    move v8, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawMainMenuDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/16 v5, 0xbc

    const/16 v4, 0x90

    const/16 v2, 0x96

    const/16 v10, 0xc8

    const/4 v8, 0x0

    const-string v0, "\u4ed9\u5883\u609f\u9053"

    invoke-static {p1, v0, v2}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    move v4, v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_3

    :goto_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v6, v0, 0x4

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v7, v0, 0x6

    move-object v0, p1

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x96

    sget v3, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int v4, v10, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/16 v4, 0x78

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    move v0, v8

    :goto_3
    sget-object v1, Lcom/t4game/Enlightenment;->nameOfEnlightenmentStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/t4game/Enlightenment;->nameOfEnlightenmentStrings:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x96

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int v4, v10, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move v2, v8

    goto/16 :goto_0

    :cond_2
    move v3, v8

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method public drawSkillCommon(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V
    .locals 9

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int v2, v0, v1

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    const/16 v2, 0x168

    const/16 v3, 0xc8

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    int-to-byte v7, v0

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    int-to-byte v6, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    if-lez v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    if-ge v0, v6, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    add-int/lit8 v5, v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u719f\u7ec3\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    const/4 v4, 0x2

    sub-int/2addr v4, v8

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5269\u4f59\u6280\u80fd\u70b9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Enlightenment;->skillPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iget-byte v5, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    const/4 v4, 0x2

    sub-int/2addr v4, v8

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    if-lez v0, :cond_2

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x3

    add-int v2, v0, v1

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    const/4 v3, 0x2

    sub-int/2addr v3, v8

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    const/4 v1, 0x5

    sub-int v3, v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6f5c\u529b\u6307\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u7834\u91cd\u6210\u529f\u7387\u589e\u52a0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    neg-int v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v8, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x5

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->tempLine:B

    const-string v0, "\u4e0b\u4e00\u91cd\uff1a"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget-byte v3, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget-byte v3, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setSkillContentLine(I)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/t4game/Enlightenment;->intOfString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    const/4 v3, 0x2

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    const-string v0, "\u4e0b\u4e00\u91cd\uff1a"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget-byte v3, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget-byte v3, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setSkillContentLine(I)V

    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v0

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0x168

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x6

    sub-int/2addr v4, v5

    const/16 v5, 0xc8

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v6, 0x4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    move v8, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    const-string v0, "\u53ef\u7834\u91cd"

    :goto_3
    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    neg-int v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    const/4 v3, 0x3

    sub-int/2addr v3, v8

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->tempLine:B

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    const/4 v2, 0x3

    sub-int/2addr v2, v8

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setSkillContentLine(I)V

    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v0

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0x168

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x6

    sub-int/2addr v4, v5

    const/16 v5, 0xc8

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_5
    move v8, v0

    goto/16 :goto_0
.end method

.method public drawSkillMenuDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const v8, 0xffc700

    const/16 v9, 0xc8

    const/16 v7, 0xa

    const/4 v3, 0x4

    invoke-virtual {p1, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v1, "\u5b66\u4e60\u6280\u80fd"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x3

    div-int v0, v9, v0

    int-to-byte v6, v0

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v6, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v2, v1, 0x28

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    sub-int v3, v1, v3

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit16 v4, v1, 0xc8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    invoke-virtual {p1, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ge v0, v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int v1, v6, v0

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v1, v1

    int-to-byte v1, v1

    :cond_0
    iget-object v2, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v4, v4, 0x28

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v0

    mul-int/2addr v7, v8

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v3, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/t4game/Enlightenment;->intOfString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v4, v4, 0x78

    sget v5, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v0

    mul-int/2addr v7, v8

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u719f\u7ec3\u5ea6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v4, v4, 0xc8

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v0

    mul-int/2addr v7, v8

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v2, v1, 0x28

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    const/4 v4, 0x1

    sub-int v4, v6, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    sub-int v3, v1, v3

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit16 v4, v1, 0xc8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto/16 :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v3, 0xe

    sub-int v3, v1, v3

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    move v1, v6

    move v5, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawSkillStudyBook(Ljavax/microedition/lcdui/Graphics;B)V
    .locals 6

    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v1, "\u6280\u80fd\u5b66\u4e60"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->potentialImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, p1, v0, v1}, Lcom/t4game/Enlightenment;->drawSkillCommon(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    return-void
.end method

.method public getContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/Enlightenment;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public getSkillContentLine()I
    .locals 1

    iget v0, p0, Lcom/t4game/Enlightenment;->skillContentLine:I

    return v0
.end method

.method public initDialog()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initMainMenuDialog()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initEnlightenmentDialog()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initInsightDialog()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initSkillDialog()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initSkillStudyDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initEnlightenmentDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v1, v5

    :goto_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [S

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    aget v0, v0, v1

    int-to-short v0, v0

    aput-short v0, v2, v5

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    sget-object v3, Lcom/t4game/CommonConstants;->GOOGS_PNG:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v3, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    invoke-static {v2}, Lcom/t4game/Util;->getTaxisId([S)[S

    move-result-object v2

    iget-object v4, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GPNGGroupData;->getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, v3, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initInsightDialog()V
    .locals 0

    return-void
.end method

.method public initMainMenuDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const-string v0, "/Enlightenment/main.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public initSkillDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    return-void
.end method

.method public initSkillStudyDialog()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "/shenzhuang/fire1.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Enlightenment;->potentialImg:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [S

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    iget-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    aget v0, v0, v2

    int-to-short v0, v0

    aput-short v0, v1, v3

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v2, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    invoke-static {v1}, Lcom/t4game/Util;->getTaxisId([S)[S

    move-result-object v1

    iget-object v3, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GPNGGroupData;->getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, v2, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method public intOfString(I)Ljava/lang/String;
    .locals 3

    const-string v2, ""

    packed-switch p1, :pswitch_data_0

    const-string v0, "\u62fe"

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u672a\u5f00\u542f"

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, ""

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    const-string v0, "\u58f9"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u8d30"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u53c1"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u8086"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u4f0d"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u9646"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u67d2"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u634c"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u7396"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u91cd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

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

.method public pointerEvent()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->pointerEventOnMenu()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->pointerEventEnlightenmentOnMenu()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->pointerEventInsightOnMenu()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->pointerEventSkillOnMenu()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->pointerEventSkillStudy()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public pointerEventEnlightenmentOnMenu()V
    .locals 6

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-lez v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    iget-byte v4, p0, Lcom/t4game/Enlightenment;->tempLine:B

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventEnlightenmentOnMenu(I)V

    :cond_0
    return-void
.end method

.method public pointerEventInsightOnMenu()V
    .locals 7

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventBuyPointCommon(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x4b

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v5, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ne v0, v6, :cond_2

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventInsightOnMenu(I)V

    goto :goto_0

    :cond_2
    iput-byte v6, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_1
.end method

.method public pointerEventOnMenu()V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x96

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    const/16 v3, 0xc8

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ne v0, v6, :cond_1

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventOnMenu(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-byte v6, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0
.end method

.method public pointerEventSkillOnMenu()V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x28

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    mul-int/lit8 v3, v6, 0x2

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    add-int/lit16 v4, v4, 0x118

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-ne v0, v6, :cond_1

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventSkillOnMenu(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-byte v6, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0
.end method

.method public pointerEventSkillStudy()V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v0

    if-ge v6, v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x28

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    mul-int/lit8 v3, v6, 0x2

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    add-int/lit16 v4, v4, 0x118

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    if-ne v0, v6, :cond_1

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->pressKeyEventSkillDtudy(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-byte v6, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0
.end method

.method public pressKeyEvent(I)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventOnMenu(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventEnlightenmentOnMenu(I)V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventBuyPointMenu(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventInsightOnMenu(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventInsightOnInfo(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventSkillOnMenu(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventSkillDtudy(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventEnlightenmentAwardInfo(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pressKeyEventBuyPointCommon(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iput-byte v2, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    :cond_0
    :goto_0
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iput-byte v2, p0, Lcom/t4game/Enlightenment;->show_buy_point_state:B

    :cond_1
    return-void

    :cond_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->sendMag_Buye_Point_Snow(B)Z

    goto :goto_0
.end method

.method public pressKeyEventBuyPointMenu(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    invoke-virtual {p0, p1}, Lcom/t4game/Enlightenment;->pressKeyEventBuyPointCommon(I)V

    return-void
.end method

.method public pressKeyEventEnlightenmentAwardInfo(I)V
    .locals 1

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    :cond_1
    return-void
.end method

.method public pressKeyEventEnlightenmentOnMenu(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->Award_state:B

    if-ne v0, v2, :cond_1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-gez v0, :cond_1

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->Award_state:B

    if-ne v0, v2, :cond_1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->size:B

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->size:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/t4game/Enlightenment;->sendMag_Enlightenment_Snow(B)Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    invoke-virtual {p0, v2}, Lcom/t4game/Enlightenment;->release(I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    goto :goto_0
.end method

.method public pressKeyEventInsightOnInfo(I)V
    .locals 1

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    :cond_1
    return-void
.end method

.method public pressKeyEventInsightOnMenu(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-gez v0, :cond_1

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-object v1, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/t4game/Enlightenment;->sendMag_Insight_Snow(BB)Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    invoke-virtual {p0, v3}, Lcom/t4game/Enlightenment;->release(I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3, v1}, Lcom/t4game/Enlightenment;->sendMag_Insight_Snow(BB)Z

    goto :goto_0
.end method

.method public pressKeyEventOnMenu(I)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-gez v0, :cond_1

    iput-byte v2, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-le v0, v1, :cond_1

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/t4game/Enlightenment;->sendMag_Enlightenment_Snow(B)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2, v2}, Lcom/t4game/Enlightenment;->sendMag_Insight_Snow(BB)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/t4game/Enlightenment;->sendMag_Study_Skill_Snow(B)Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Enlightenment;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0, v2}, Lcom/t4game/Enlightenment;->release(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pressKeyEventSkillDtudy(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->getSkillContentLine()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedContentIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/t4game/Enlightenment;->sendMag_Study_Skill_Snow(B)Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    goto :goto_0
.end method

.method public pressKeyEventSkillOnMenu(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    if-gez v0, :cond_1

    iput-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    iget-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/t4game/Enlightenment;->setDialogId(B)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/t4game/Enlightenment;->release(I)V

    goto :goto_0
.end method

.method public processMag(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/Enlightenment;->processMsgEnlightenmentDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/Enlightenment;->processMsgInsightDialog()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/Enlightenment;->processMsgStudySkillDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/Enlightenment;->processMsgBuyDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x29f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release(I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/t4game/Enlightenment;->mainMenu:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iput-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_Icon:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->Award_Content:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->Enlightenment_State_Content:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    iput-object v1, p0, Lcom/t4game/Enlightenment;->attribute:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->attributeColor:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-nez p1, :cond_0

    :cond_6
    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillImg:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillLayer:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillExp:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->potenttialNum:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->nextPotential:[I

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillContent:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Enlightenment;->skillNextContent:[Ljava/lang/String;

    goto :goto_0
.end method

.method public sendMag_Buye_Point_Snow(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x2a2

    iget-object v2, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMag_Enlightenment_Snow(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x29f

    iget-object v2, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMag_Insight_Snow(BB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x2a0

    iget-object v2, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0
.end method

.method public sendMag_Study_Skill_Snow(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Enlightenment;->selectedMenuIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Enlightenment;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x2a1

    iget-object v2, p0, Lcom/t4game/Enlightenment;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setAttributeContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Enlightenment;->attributeContent:Ljava/lang/String;

    return-void
.end method

.method public setDialogId(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Enlightenment;->dialogId:B

    invoke-virtual {p0}, Lcom/t4game/Enlightenment;->initDialog()V

    return-void
.end method

.method public setSkillContentLine(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/Enlightenment;->skillContentLine:I

    return-void
.end method
