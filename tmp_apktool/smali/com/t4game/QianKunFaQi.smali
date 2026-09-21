.class public Lcom/t4game/QianKunFaQi;
.super Ljava/lang/Object;


# static fields
.field private static final BLOCKWIDTH:I = 0x18

.field private static final BOUNDCOLOR:[I

.field private static final CHONGZHU_GUIDE:Ljava/lang/String; = "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

.field private static final DOWN:B = 0x3t

.field private static final GRADE:[Ljava/lang/String;

.field private static final GUIDEARRAY:[Ljava/lang/String;

.field private static final HOLE_NUM:B = 0x5t

.field private static final LEARN_MENU:[Ljava/lang/String;

.field private static final LEFT:B = 0x0t

.field private static final LEFT_X:I

.field private static final LOCKINTRO:[Ljava/lang/String;

.field private static final RIGHT:B = 0x2t

.field private static final UP:B = 0x1t


# instance fields
.field private final NEIGHBOR:[[B

.field private actionType:B

.field private beLocked:[B

.field private beOpen:[B

.field private beadNum:B

.field private faBaoSkillHolePos:[[I

.field private fabaoIndex:B

.field public faqiSkillNum:B

.field private fayuandanCostNum:[B

.field gameScreen:Lcom/t4game/GameScreen;

.field private holeIndex:B

.field private potNum:B

.field private secondConfirmFlag:B

.field private skillEffect:[Ljava/lang/String;

.field private skillGrade:[B

.field public skillIconId:[S

.field public skillId:[I

.field public skillLevel:[B

.field public skillName:[Ljava/lang/String;

.field private viewStateOfDialogL2:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "20"

    aput-object v1, v0, v4

    const-string v1, "40"

    aput-object v1, v0, v5

    const-string v1, "60"

    aput-object v1, v0, v6

    const-string v1, "70"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "80"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/QianKunFaQi;->GRADE:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    aput-object v3, v0, v4

    const-string v1, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    aput-object v3, v0, v5

    const-string v1, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    aput-object v3, v0, v6

    const-string v1, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    aput-object v3, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\uff0c\u83b7\u5f97\u6240\u5f00\u653e\u5b54\u4f4d\u6570\u91cf\u7684\u6280\u80fd"

    aput-object v3, v0, v1

    sput-object v0, Lcom/t4game/QianKunFaQi;->GUIDEARRAY:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/QianKunFaQi;->BOUNDCOLOR:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\u5df2\u9501\u5b9a"

    aput-object v1, v0, v5

    sput-object v0, Lcom/t4game/QianKunFaQi;->LOCKINTRO:[Ljava/lang/String;

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x168

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/QianKunFaQi;->LEFT_X:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6cd5\u5668\u91cd\u94f8"

    aput-object v1, v0, v4

    const-string v1, "\u6cd5\u5668\u8fdb\u9636"

    aput-object v1, v0, v5

    const-string v1, "\u9501\u5b9a"

    aput-object v1, v0, v6

    const-string v1, "\u89e3\u9501"

    aput-object v1, v0, v7

    sput-object v0, Lcom/t4game/QianKunFaQi;->LEARN_MENU:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0xffa500
        0x4169e1
        0xff00
        0xffff00
        0xff0000
    .end array-data
.end method

.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    iput-byte v2, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/QianKunFaQi;->actionType:B

    new-array v0, v3, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->NEIGHBOR:[[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->beOpen:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillName:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillLevel:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->fayuandanCostNum:[B

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillEffect:[Ljava/lang/String;

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/QianKunFaQi;->skillGrade:[B

    iput-object p1, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    invoke-direct {p0}, Lcom/t4game/QianKunFaQi;->initfaBaoSkillHolePos()V

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        0x2t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        -0x1t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x2t
        0x4t
        -0x1t
    .end array-data

    :array_4
    .array-data 1
        0x3t
        0x2t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private drawHighGradeFram(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 1

    const v0, 0x620032    # 8.999949E-39f

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const v0, 0xa335ee

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    return-void
.end method

.method private getHoleIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    return v0
.end method

.method private initfaBaoSkillHolePos()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget v0, Lcom/t4game/QianKunFaQi;->LEFT_X:I

    add-int/lit8 v0, v0, 0x28

    const/16 v1, 0xb

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v2, v2, 0x3c

    const/16 v3, 0x5a

    add-int v4, v0, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v0, 0x2d

    add-int/lit8 v5, v2, 0x18

    add-int/2addr v5, v1

    add-int/lit8 v6, v5, 0x18

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v6, v6, v7

    aput v0, v6, v7

    iget-object v6, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v6, v6, v7

    aput v2, v6, v8

    iget-object v6, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v6, v6, v8

    aput v4, v6, v7

    iget-object v6, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v6, v6, v8

    aput v2, v6, v8

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v2, v2, v9

    aput v3, v2, v7

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v2, v2, v9

    aput v5, v2, v8

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v2, v2, v10

    aput v0, v2, v7

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v10

    aput v1, v0, v8

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v11

    aput v4, v0, v7

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v11

    aput v1, v0, v8

    return-void
.end method

.method private isHighLeveUnloked()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->skillLevel:[B

    aget-byte v2, v2, v0

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private menuFunction(B)V
    .locals 6

    const/4 v3, -0x1

    const/16 v5, 0x253

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-eq p1, v3, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    const/16 v1, 0x1d

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iput v4, p0, Lcom/t4game/QianKunFaQi;->viewStateOfDialogL2:I

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/t4game/QianKunFaQi;->setActionType(B)V

    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->beadNum:B

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->potNum:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5b54\u4f4d\u6ca1\u6709\u5f00\u542f\uff0c\u65e0\u6cd5\u8fdb\u884c\u6cd5\u5668\u91cd\u94f8"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/t4game/QianKunFaQi;->isHighLeveUnloked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u60a8\u6709\u9ad8\u9636\u6280\u80fd\u6ca1\u88ab\u9501\u5b9a\uff0c\u6cd5\u5668\u91cd\u94f8\u540e\u6240\u6709\u6280\u80fd\u4f1a\u88ab\u5237\u65b0\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->actionType:B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->fabaoIndex:B

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/t4game/QianKunFaQi;->sendQianKunFaQiView(BBBB)Z

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/QianKunFaQi;->setActionType(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6280\u80fd\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u8fdb\u884c\u6cd5\u5668\u8fdb\u9636"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillLevel:[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6cd5\u5668\u6280\u80fd\u5df2\u7ecf\u5230\u8fbe\u9636\u6570\u4e0a\u9650,\u65e0\u6cd5\u8fdb\u884c\u8fdb\u9636\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6cd5\u5668\u8fdb\u9636\u6709\u4e00\u5b9a\u6982\u7387\u5931\u8d25\uff0c\u662f\u5426\u6d88\u8017"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->fayuandanCostNum:[B

    iget-byte v3, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a \'\u6cd5\u6e90\u4e39\'\u8fdb\u884c\u6b64\u64cd\u4f5c\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/t4game/QianKunFaQi;->setActionType(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6280\u80fd\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u9501\u5b9a"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5df2\u9501\u5b9a\uff0c\u8bf7\u9009\u62e9\u5176\u5b83\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6280\u80fd\u9501\u5b9a\u540e\u6bcf\u6b21\u8fdb\u884c\u6cd5\u5668\u91cd\u94f8\u9700\u8981\u6263\u9664\u76f8\u5e94\u6570\u91cf\u7684\'\u5fc3\u9501\u58f6\'\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/t4game/QianKunFaQi;->setActionType(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget v0, v0, v1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6280\u80fd\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u89e3\u9501"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u672a\u9501\u5b9a\uff0c\u8bf7\u9009\u62e9\u5176\u5b83\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->actionType:B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->fabaoIndex:B

    iget-byte v2, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/t4game/QianKunFaQi;->sendQianKunFaQiView(BBBB)Z

    goto/16 :goto_0
.end method

.method private paintBlocksAndTextBox(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    array-length v0, v0

    if-ge v8, v0, :cond_a

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v8

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beOpen:[B

    aget-byte v0, v0, v8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    aget v0, v0, v8

    if-eqz v0, :cond_3

    invoke-static {v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillGrade:[B

    aget-byte v0, v0, v8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/QianKunFaQi;->drawHighGradeFram(IIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    aget-short v4, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/t4game/GameWorld;->getOneGoodIcon(BS)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    aget-short v3, v3, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    check-cast v0, Ljavax/microedition/lcdui/Image;

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v2, 0x2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    aget-byte v0, v0, v8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_lock:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_1
    :goto_1
    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    if-ne v8, v0, :cond_2

    invoke-static {v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beOpen:[B

    aget-byte v0, v0, v8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    aget v0, v0, v8

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    add-int/lit8 v1, p2, 0x18

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    iget-byte v4, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-short v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/t4game/GameWorld;->getOneGoodIcon(BS)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    iget-byte v3, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-short v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    check-cast v0, Ljavax/microedition/lcdui/Image;

    sget v2, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, p2, p3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->skillName:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->skillLevel:[B

    iget-byte v3, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u9636  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/t4game/QianKunFaQi;->LOCKINTRO:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-byte v4, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v3, v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    sub-int v3, p4, v2

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffc700

    move v2, p3

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v0, v0, v1

    if-nez v0, :cond_5

    add-int/lit8 v0, p3, 0x18

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->skillEffect:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x3

    sub-int v3, p4, v1

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffc700

    move v1, p2

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/t4game/QianKunFaQi;->BOUNDCOLOR:[I

    aget v0, v0, v8

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const v0, 0x121212

    sget-object v3, Lcom/t4game/QianKunFaQi;->BOUNDCOLOR:[I

    aget v3, v3, v8

    invoke-static {v1, v2, p1, v0, v3}, Lcom/t4game/DraftingUtil;->paintIconBlock_withColor(IILjavax/microedition/lcdui/Graphics;II)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v0, p3, 0x18

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-byte v0, v0, v1

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x18

    move v2, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, p3, 0x18

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/t4game/QianKunFaQi;->GUIDEARRAY:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x3

    sub-int v3, p4, v1

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffc700

    move v1, p2

    move v2, p3

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6cd5\u5b9d\u8fbe\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/QianKunFaQi;->GRADE:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7\u65f6\u5f00\u542f\uff0c\u5f00\u542f\u540e\u53ef\u4ee5\u901a\u8fc7\u6cd5\u5668\u91cd\u94f8\u5b66\u4e60\u6280\u80fd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffc700

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method private pointerIndexOfHoles()B
    .locals 9

    const/16 v4, 0x18

    const/4 v8, 0x0

    const/4 v0, -0x1

    move v6, v8

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v0, v0, v6

    aget v0, v0, v8

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x1

    aget v2, v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-byte v0, v6

    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v0

    goto :goto_0

    :cond_0
    return v7

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method private pressedOfQianKunFaQiMemu(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->menuFunction(B)V

    return-void
.end method

.method private pressedOfQianKunFaQiView(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    aget-byte v0, v0, v4

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->setHoleIndex(B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->setHoleIndex(B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    aget-byte v0, v0, v3

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->setHoleIndex(B)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->setHoleIndex(B)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    sget-object v2, Lcom/t4game/QianKunFaQi;->LEARN_MENU:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput v4, p0, Lcom/t4game/QianKunFaQi;->viewStateOfDialogL2:I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/t4game/GameWorld;->sendFaBaoPackMessage(BII)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setHoleIndex(B)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput-byte p1, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    :cond_0
    return-void
.end method


# virtual methods
.method public drawQianKunFaQi(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const v10, 0xffc700

    const/4 v12, 0x1

    const-string v0, "\u4e7e\u5764\u6cd5\u5668"

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    sget v0, Lcom/t4game/QianKunFaQi;->LEFT_X:I

    add-int/lit8 v2, v0, 0x5a

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v3, v0, 0x32

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    const/4 v0, 0x5

    sget v1, Lcom/t4game/QianKunFaQi;->LEFT_X:I

    add-int/lit8 v5, v1, 0x5

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->faBaoSkillHolePos:[[I

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aget v1, v1, v12

    add-int/lit8 v1, v1, 0x18

    add-int v6, v1, v0

    invoke-virtual {p1, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u6cd5\u5668\u91cd\u94f8\uff1a\u6d88\u8017"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'\u6df7\u5143\u73e0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/QianKunFaQi;->beadNum:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \'\u5fc3\u9501\u58f6\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v7, p0, Lcom/t4game/QianKunFaQi;->potNum:B

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\u4e2a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xaf

    iget-byte v8, p0, Lcom/t4game/QianKunFaQi;->beadNum:B

    if-nez v8, :cond_1

    iget-byte v8, p0, Lcom/t4game/QianKunFaQi;->potNum:B

    if-nez v8, :cond_1

    :goto_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, p1, v0, v3, v7}, Lcom/t4game/QianKunFaQi;->paintBlocksAndTextBox(Ljavax/microedition/lcdui/Graphics;III)V

    iget v0, p0, Lcom/t4game/QianKunFaQi;->viewStateOfDialogL2:I

    if-ne v0, v12, :cond_0

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v8, p0, Lcom/t4game/QianKunFaQi;->beadNum:B

    if-nez v8, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->potNum:B

    if-nez v1, :cond_3

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    move-object v11, p1

    invoke-static/range {v4 .. v11}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_1
.end method

.method public pointerOfQianKunFaQi()V
    .locals 2

    iget v0, p0, Lcom/t4game/QianKunFaQi;->viewStateOfDialogL2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->menuFunction(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/t4game/QianKunFaQi;->pointerIndexOfHoles()B

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/QianKunFaQi;->getHoleIndex()B

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v1, -0x5

    invoke-direct {p0, v1}, Lcom/t4game/QianKunFaQi;->pressedOfQianKunFaQiView(I)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/t4game/QianKunFaQi;->setHoleIndex(B)V

    goto :goto_0
.end method

.method public pressedAletCancel(I)V
    .locals 1

    const/16 v0, 0x253

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method

.method public pressedAletOK(I)V
    .locals 4

    const/16 v0, 0x253

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->actionType:B

    iget-byte v1, p0, Lcom/t4game/QianKunFaQi;->fabaoIndex:B

    iget-byte v2, p0, Lcom/t4game/QianKunFaQi;->holeIndex:B

    iget-byte v3, p0, Lcom/t4game/QianKunFaQi;->secondConfirmFlag:B

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/t4game/QianKunFaQi;->sendQianKunFaQiView(BBBB)Z

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/QianKunFaQi;->secondConfirmFlag:B

    :cond_0
    return-void
.end method

.method public pressedOfQianKunFaQi(I)V
    .locals 2

    iget v0, p0, Lcom/t4game/QianKunFaQi;->viewStateOfDialogL2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/QianKunFaQi;->pressedOfQianKunFaQiMemu(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/t4game/QianKunFaQi;->pressedOfQianKunFaQiView(I)V

    goto :goto_0
.end method

.method public processQianKunFaQi()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->beOpen:[B

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->beOpen:[B

    aget-byte v1, v1, v0

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillIconId:[S

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v2

    aput-short v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillLevel:[B

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->fayuandanCostNum:[B

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillEffect:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->beLocked:[B

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->skillGrade:[B

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/QianKunFaQi;->beadNum:B

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/QianKunFaQi;->potNum:B

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/QianKunFaQi;->secondConfirmFlag:B

    iget-byte v0, p0, Lcom/t4game/QianKunFaQi;->secondConfirmFlag:B

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendQianKunFaQiView(BBBB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x253

    iget-object v2, p0, Lcom/t4game/QianKunFaQi;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setActionType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/QianKunFaQi;->actionType:B

    return-void
.end method

.method public setFabaoIndex(B)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput-byte p1, p0, Lcom/t4game/QianKunFaQi;->fabaoIndex:B

    :cond_0
    return-void
.end method
