.class public Lcom/t4game/KingAward;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4game/KingAward$AwardItem;
    }
.end annotation


# static fields
.field private static final AWARD_NAME_COLOR:[I

.field private static final INTRO:Ljava/lang/String; = "\u8eab\u4e3a\u9738\u4e3b\uff0c\u8fd9\u662f\u4f53\u73b0\u4f60\u4f1f\u5927\u9886\u5bfc\u529b\u7684\u65f6\u523b\u4e86\uff0c\u5c06\u4eba\u4eec\u53f7\u53ec\u8d77\u6765\u5427\uff0c\u53ea\u8981\u9886\u53d6\u5956\u52b1\u7684\u73a9\u5bb6\u8fbe\u5230\u4e00\u5b9a\u6570\u91cf\u9738\u4e3b\u5c31\u53ef\u4ee5\u5f97\u5230\u6d77\u91cf\u5956\u52b1\uff01"

.field private static final NUM_COLOR:I = 0xff00

.field public static image:Ljavax/microedition/lcdui/Image;

.field public static imageName:Ljavax/microedition/lcdui/Image;

.field private static instance:Lcom/t4game/KingAward;

.field public static kingLock:Z

.field public static nameLock:Z


# instance fields
.field private final DIALOGFONT_COLOR:I

.field private award:[Lcom/t4game/KingAward$AwardItem;

.field private awardBoxImages:[[Ljavax/microedition/lcdui/Image;

.field private gameWorld:Lcom/t4game/GameWorld;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    sput-boolean v1, Lcom/t4game/KingAward;->kingLock:Z

    sput-boolean v1, Lcom/t4game/KingAward;->nameLock:Z

    sput-object v0, Lcom/t4game/KingAward;->instance:Lcom/t4game/KingAward;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/KingAward;->AWARD_NAME_COLOR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xff00
        0x70dd
        0xfe05aa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/KingAward;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/KingAward;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    const v0, 0xffc700

    iput v0, p0, Lcom/t4game/KingAward;->DIALOGFONT_COLOR:I

    return-void
.end method

.method public static getInstance()Lcom/t4game/KingAward;
    .locals 1

    sget-object v0, Lcom/t4game/KingAward;->instance:Lcom/t4game/KingAward;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/KingAward;

    invoke-direct {v0}, Lcom/t4game/KingAward;-><init>()V

    sput-object v0, Lcom/t4game/KingAward;->instance:Lcom/t4game/KingAward;

    :cond_0
    sget-object v0, Lcom/t4game/KingAward;->instance:Lcom/t4game/KingAward;

    return-object v0
.end method

.method public static giantName(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GSprite;)V
    .locals 9

    const/4 v4, 0x0

    sget-boolean v0, Lcom/t4game/KingAward;->nameLock:Z

    if-nez v0, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-virtual {p3}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    sget v0, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    sget-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    const v3, 0xffffff

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {v0, v4, v4, v1, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    sget-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p3}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v0

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    const/16 v3, 0x11

    const/high16 v4, 0xff0000

    const v5, 0xffff00

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, v8, v7}, Lcom/t4game/Util;->scaleImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/KingAward;->nameLock:Z

    :cond_0
    sget-object v0, Lcom/t4game/KingAward;->imageName:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method

.method public static giantNpc(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GSprite;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v6, 0x1

    sget-boolean v0, Lcom/t4game/KingAward;->kingLock:Z

    if-nez v0, :cond_1

    const/4 v7, 0x7

    const/16 v8, 0x64

    const/16 v9, 0x5a

    invoke-static {v8, v9}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, v8, v9}, Lcom/t4game/Util;->getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    shr-int/lit8 v2, v8, 0x1

    const/16 v0, 0xa

    sub-int v3, v9, v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/GSprite;->drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V

    iget-object v0, p3, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    shr-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v1, v2, v9}, Lcom/t4game/GFabao;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    :cond_0
    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, v7, v10}, Lcom/t4game/Util;->scaleImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    iget-byte v0, p3, Lcom/t4game/GSprite;->initState:B

    if-ne v0, v10, :cond_1

    sput-boolean v6, Lcom/t4game/KingAward;->kingLock:Z

    :cond_1
    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/t4game/KingAward;->image:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p2, 0xa

    const/16 v2, 0x21

    invoke-virtual {p0, v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    return-void
.end method

.method private initKingAward()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v2, v2

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    iget-byte v1, v1, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljavax/microedition/lcdui/Image;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move v1, v6

    :goto_0
    iget-object v0, p0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v3, v3

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v3, v3

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    aget-short v2, v2, v1

    div-int/lit16 v2, v2, 0x3e8

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    iget-object v4, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v4, v4

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    aget-short v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/t4game/GameWorld;->getOneGoodIcon(BS)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    move v2, v6

    :goto_2
    iget-object v0, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    aget-short v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    sput-object v0, Lcom/t4game/KingAward;->instance:Lcom/t4game/KingAward;

    return-void
.end method


# virtual methods
.method public drawKingAwardDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 21

    const/4 v5, 0x1

    const/16 v6, 0xc20

    invoke-static {v5, v6}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v6

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x168

    sub-int/2addr v5, v7

    shr-int/lit8 v7, v5, 0x1

    const/4 v8, 0x4

    const/16 v9, 0x168

    const/16 v10, 0x104

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    const/16 v8, 0x163

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v7, v5, 0xa

    const-string v5, "\u8eab\u4e3a\u9738\u4e3b\uff0c\u8fd9\u662f\u4f53\u73b0\u4f60\u4f1f\u5927\u9886\u5bfc\u529b\u7684\u65f6\u523b\u4e86\uff0c\u5c06\u4eba\u4eec\u53f7\u53ec\u8d77\u6765\u5427\uff0c\u53ea\u8981\u9886\u53d6\u5956\u52b1\u7684\u73a9\u5bb6\u8fbe\u5230\u4e00\u5b9a\u6570\u91cf\u9738\u4e3b\u5c31\u53ef\u4ee5\u5f97\u5230\u6d77\u91cf\u5956\u52b1\uff01"

    const/4 v9, 0x5

    const/4 v10, -0x1

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v5

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    const/16 v6, 0xc8

    const/16 v7, 0x20

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    const/16 v7, 0x20

    sub-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x5

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    sget v7, Lcom/t4game/Defaults;->sfh:I

    add-int v16, v14, v7

    add-int/lit8 v17, v15, 0x1e

    add-int/lit8 v6, v6, 0xa

    sub-int v7, v16, v14

    sget v8, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v7, v8

    add-int v18, v5, v7

    const/4 v5, 0x0

    move/from16 v19, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_2

    const/4 v5, 0x0

    move/from16 v20, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-byte v5, v5, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-object v5, v5, Lcom/t4game/KingAward$AwardItem;->awardName:Ljava/lang/String;

    mul-int v7, v16, v19

    add-int v7, v7, v18

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v9, Lcom/t4game/KingAward;->AWARD_NAME_COLOR:[I

    aget v9, v9, v19

    sget-object v10, Lcom/t4game/KingAward;->AWARD_NAME_COLOR:[I

    aget v10, v10, v19

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-object v5, v5, Lcom/t4game/KingAward$AwardItem;->awardName:Ljava/lang/String;

    invoke-static {v5}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    aget-object v7, v7, v19

    aget-object v7, v7, v20

    mul-int v8, v20, v17

    add-int/2addr v8, v5

    mul-int v9, v16, v19

    add-int v9, v9, v18

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const v7, 0xffffff

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    mul-int v7, v20, v17

    add-int/2addr v7, v5

    mul-int v8, v16, v19

    add-int v8, v8, v18

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    move v3, v15

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    mul-int v7, v16, v19

    add-int v7, v7, v18

    add-int v9, v7, v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v8, v0

    aget-object v8, v8, v19

    iget v8, v8, Lcom/t4game/KingAward$AwardItem;->awardAlreadyGetNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v8, v0

    aget-object v8, v8, v19

    iget-byte v8, v8, Lcom/t4game/KingAward$AwardItem;->awardTotalNum:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    mul-int v8, v20, v17

    add-int/2addr v8, v5

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v11, -0x1

    const v12, 0xff00

    move-object/from16 v13, p1

    invoke-static/range {v7 .. v13}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    array-length v5, v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_0

    const v5, 0xffc700

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_0
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public drawKingAwardDialog1(Ljavax/microedition/lcdui/Graphics;)V
    .locals 21

    const-string v6, "\u9738\u4e3b\u5956\u52b1"

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x168

    sub-int/2addr v5, v7

    shr-int/lit8 v7, v5, 0x1

    const/4 v8, 0x4

    const/16 v9, 0x168

    const/16 v10, 0x104

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    const/16 v8, 0x163

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v7, v5, 0xa

    const-string v5, "\u8eab\u4e3a\u9738\u4e3b\uff0c\u8fd9\u662f\u4f53\u73b0\u4f60\u4f1f\u5927\u9886\u5bfc\u529b\u7684\u65f6\u523b\u4e86\uff0c\u5c06\u4eba\u4eec\u53f7\u53ec\u8d77\u6765\u5427\uff0c\u53ea\u8981\u9886\u53d6\u5956\u52b1\u7684\u73a9\u5bb6\u8fbe\u5230\u4e00\u5b9a\u6570\u91cf\u9738\u4e3b\u5c31\u53ef\u4ee5\u5f97\u5230\u6d77\u91cf\u5956\u52b1\uff01"

    const/4 v9, 0x5

    const/4 v10, -0x1

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    move-result v5

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xf

    add-int v12, v7, v5

    const-string v5, "\u9886\u53d6\u8fdb\u5ea6"

    sget v6, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v7, v12, 0x5

    const/16 v8, 0x18

    const/4 v9, -0x1

    const v10, 0xffc700

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 v5, 0xc8

    const/16 v6, 0x20

    sub-int v6, v12, v6

    sub-int/2addr v5, v6

    const/16 v6, 0x20

    sub-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v6, v12

    add-int/lit8 v7, v6, 0x5

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    div-int/lit8 v16, v5, 0x3

    add-int/lit8 v17, v15, 0x1e

    add-int/lit8 v6, v6, 0xa

    sub-int v5, v16, v14

    sget v8, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v5, v8

    add-int v18, v7, v5

    const/4 v5, 0x0

    move/from16 v19, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_2

    const/4 v5, 0x0

    move/from16 v20, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-byte v5, v5, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-object v5, v5, Lcom/t4game/KingAward$AwardItem;->awardName:Ljava/lang/String;

    mul-int v7, v16, v19

    add-int v7, v7, v18

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v9, Lcom/t4game/KingAward;->AWARD_NAME_COLOR:[I

    aget v9, v9, v19

    sget-object v10, Lcom/t4game/KingAward;->AWARD_NAME_COLOR:[I

    aget v10, v10, v19

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    aget-object v5, v5, v19

    iget-object v5, v5, Lcom/t4game/KingAward$AwardItem;->awardName:Ljava/lang/String;

    invoke-static {v5}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->awardBoxImages:[[Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    aget-object v7, v7, v19

    aget-object v7, v7, v20

    mul-int v8, v20, v17

    add-int/2addr v8, v5

    mul-int v9, v16, v19

    add-int v9, v9, v18

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const v7, 0xffffff

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    mul-int v7, v20, v17

    add-int/2addr v7, v5

    mul-int v8, v16, v19

    add-int v8, v8, v18

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    move v3, v15

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    mul-int v7, v16, v19

    add-int v7, v7, v18

    add-int v9, v7, v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v8, v0

    aget-object v8, v8, v19

    iget v8, v8, Lcom/t4game/KingAward$AwardItem;->awardAlreadyGetNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v8, v0

    aget-object v8, v8, v19

    iget-byte v8, v8, Lcom/t4game/KingAward$AwardItem;->awardTotalNum:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    mul-int v8, v20, v17

    add-int/2addr v8, v5

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v11, -0x1

    const v12, 0xff00

    move-object/from16 v13, p1

    invoke-static/range {v7 .. v13}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move-object v5, v0

    array-length v5, v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_0

    const v5, 0xffc700

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_0
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public pressedOfKingAward(I)V
    .locals 3

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/KingAward;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/KingAward;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-direct {p0}, Lcom/t4game/KingAward;->release()V

    :cond_1
    return-void
.end method

.method public processMsg_NPC_BAZHU_REWARD()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [Lcom/t4game/KingAward$AwardItem;

    iput-object v1, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    new-instance v3, Lcom/t4game/KingAward$AwardItem;

    invoke-direct {v3, p0}, Lcom/t4game/KingAward$AwardItem;-><init>(Lcom/t4game/KingAward;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/t4game/KingAward$AwardItem;->awardName:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v3, v3, v1

    iget-byte v3, v3, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    new-array v3, v3, [S

    iput-object v3, v2, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v3, v3, v1

    iget-byte v3, v3, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/t4game/KingAward$AwardItem;->awardQuality:[B

    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v3, v3, v1

    iget-byte v3, v3, Lcom/t4game/KingAward$AwardItem;->awardSize:B

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/t4game/KingAward$AwardItem;->awardIconId:[S

    iget-object v4, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    aput-short v4, v3, v2

    iget-object v3, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/t4game/KingAward$AwardItem;->awardQuality:[B

    iget-object v4, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/t4game/KingAward$AwardItem;->awardAlreadyGetNum:I

    iget-object v2, p0, Lcom/t4game/KingAward;->award:[Lcom/t4game/KingAward$AwardItem;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/KingAward$AwardItem;->awardTotalNum:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public processMsg_NPC_BAZHU_REWARD_LoadingBack()V
    .locals 2

    invoke-direct {p0}, Lcom/t4game/KingAward;->initKingAward()V

    iget-object v0, p0, Lcom/t4game/KingAward;->screen:Lcom/t4game/GameScreen;

    const/16 v1, -0x26

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    return-void
.end method

.method public sendMsg_NPC_BAZHU_REWARD()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/KingAward;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x268

    iget-object v2, p0, Lcom/t4game/KingAward;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iput-object p1, p0, Lcom/t4game/KingAward;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/KingAward;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/KingAward;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/KingAward;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method
