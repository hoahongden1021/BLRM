.class public Lcom/t4game/FaBao;
.super Ljava/lang/Object;


# static fields
.field public static faboIconH:Ljava/util/Hashtable;

.field public static final pinZhi:[Ljava/lang/String;

.field public static final qianli:[Ljava/lang/String;


# instance fields
.field public allUpgrade:B

.field public canGrowup:B

.field public curExp:I

.field public currentSkillNum:B

.field public dang:B

.field public grade:S

.field public iconImage:Ljavax/microedition/lcdui/Image;

.field public iconImg:S

.field public id:I

.field public maxCanUseBox:B

.field public maxSkillBox:B

.field public name:Ljava/lang/String;

.field public nextExp:I

.field public onBody:Z

.field public propetyId:B

.field public proprtyShuZhi:I

.field public qianzhi:B

.field public quility:B

.field public rongLian:[B

.field public skillIcon:[S

.field public skillId:[S

.field public skillLevel:[B

.field public skillName:[Ljava/lang/String;

.field public skillPropetyId:[B

.field public specialized:B

.field public upGrade:B

.field public visable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5b9d\u5668"

    aput-object v1, v0, v2

    const-string v1, "\u7075\u5668"

    aput-object v1, v0, v3

    const-string v1, "\u4ed9\u5668"

    aput-object v1, v0, v4

    const-string v1, "\u5148\u5929\u7075\u5b9d"

    aput-object v1, v0, v5

    const-string v1, "\u5148\u5929\u81f3\u5b9d"

    aput-object v1, v0, v6

    sput-object v0, Lcom/t4game/FaBao;->pinZhi:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u666e\u901a"

    aput-object v1, v0, v2

    const-string v1, "\u4f18\u79c0"

    aput-object v1, v0, v3

    const-string v1, "\u5353\u8d8a"

    aput-object v1, v0, v4

    const-string v1, "\u5b8c\u7f8e"

    aput-object v1, v0, v5

    sput-object v0, Lcom/t4game/FaBao;->qianli:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/t4game/FaBao;->faboIconH:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/FaBao;->id:I

    iput-byte v1, p0, Lcom/t4game/FaBao;->allUpgrade:B

    const-string v0, "\u6cd5\u5b9d\u7a7a\u4f4d"

    iput-object v0, p0, Lcom/t4game/FaBao;->name:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/FaBao;->dang:B

    iput-byte v1, p0, Lcom/t4game/FaBao;->quility:B

    iput-byte v1, p0, Lcom/t4game/FaBao;->qianzhi:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/FaBao;->canGrowup:B

    iput-object v2, p0, Lcom/t4game/FaBao;->skillName:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    iput-object v2, p0, Lcom/t4game/FaBao;->skillIcon:[S

    iput-object v2, p0, Lcom/t4game/FaBao;->skillLevel:[B

    iput-object v2, p0, Lcom/t4game/FaBao;->skillId:[S

    iput-object v2, p0, Lcom/t4game/FaBao;->iconImage:Ljavax/microedition/lcdui/Image;

    iput-boolean v1, p0, Lcom/t4game/FaBao;->visable:Z

    iput-boolean v1, p0, Lcom/t4game/FaBao;->onBody:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/FaBao;->rongLian:[B

    iput-boolean v1, p0, Lcom/t4game/FaBao;->visable:Z

    iput-boolean v1, p0, Lcom/t4game/FaBao;->onBody:Z

    return-void
.end method


# virtual methods
.method public drawAll(IILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/FaBao;->drawTop(IILjavax/microedition/lcdui/Graphics;ZZ)V

    iget-boolean v0, p0, Lcom/t4game/FaBao;->visable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/FaBao;->curExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/FaBao;->nextExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7eaf\u719f\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/FaBao;->specialized:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7194\u70bc\u6b21\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FaBao;->rongLian:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FaBao;->rongLian:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method public drawTop(IILjavax/microedition/lcdui/Graphics;ZZ)V
    .locals 11

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x28

    sub-int v2, v0, v1

    const/16 v3, 0x28

    if-eqz p5, :cond_2

    const v4, 0x444444

    move v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxNoTop(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/t4game/FaBao;->onBody:Z

    if-eqz v0, :cond_3

    const/4 v4, -0x2

    move v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/t4game/FaBao;->visable:Z

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/t4game/FaBao;->iconImg:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/t4game/FaBao;->faboIconH:Ljava/util/Hashtable;

    iget-short v1, p0, Lcom/t4game/FaBao;->iconImg:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/microedition/lcdui/Image;

    iput-object p4, p0, Lcom/t4game/FaBao;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/FaBao;->iconImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/FaBao;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/t4game/FaBao;->iconImage:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v3, p1, 0xa

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p3, v1, v3, v0, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    move v10, v0

    :goto_2
    invoke-virtual {p0}, Lcom/t4game/FaBao;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_3
    add-int/lit8 v4, p1, 0x28

    add-int/lit8 v5, v10, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/FaBao;->getPropety()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/FaBao;->proprtyShuZhi:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/t4game/GUtil;->getFloatString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    shr-int/lit8 v0, v2, 0x1

    add-int v4, p1, v0

    add-int/lit8 v5, v10, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v7, -0x1

    sget-object v0, Lcom/t4game/CommonConstants;->WUXING_PROPERTY_COLOR:[I

    iget-byte v1, p0, Lcom/t4game/FaBao;->propetyId:B

    aget v8, v0, v1

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-boolean v0, p0, Lcom/t4game/FaBao;->onBody:Z

    if-eqz v0, :cond_5

    const-string v3, "\u5df2\u88c5"

    add-int v0, p1, v2

    const/16 v1, 0xa

    sub-int v4, v0, v1

    add-int/lit8 v5, v10, 0x2

    sget v6, Lcom/t4game/Defaults;->RIGHT_TOP:I

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b49\u7ea7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/FaBao;->grade:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    shr-int/lit8 v0, v2, 0x2

    add-int v4, p1, v0

    add-int/lit8 v5, v10, 0x2

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/FaBao;->curExp:I

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Lcom/t4game/FaBao;->nextExp:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v1, p1, v2

    shr-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v10, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void

    :cond_2
    const v4, 0x121212

    move v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxNoTop(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_3
    const v4, 0x121212

    move v0, p1

    move v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_4
    move-object v3, v0

    goto/16 :goto_3

    :cond_5
    const-string v3, "\u672a\u88c5"

    add-int v0, p1, v2

    const/16 v1, 0xa

    sub-int v4, v0, v1

    add-int/lit8 v5, v10, 0x2

    sget v6, Lcom/t4game/Defaults;->RIGHT_TOP:I

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_6
    move v10, p2

    goto/16 :goto_2
.end method

.method public drawWithSkill(IILjavax/microedition/lcdui/Graphics;B)V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/t4game/FaBao;->getName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x5

    add-int/lit8 v2, p2, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffc700

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FaBao;->skillName:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-byte v0, p0, Lcom/t4game/FaBao;->currentSkillNum:B

    if-ge v7, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/FaBao;->skillName:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne p4, v4, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x5

    add-int/lit8 v2, p2, 0x2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v7, 0x1

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v5, Lcom/t4game/CommonConstants;->WUXING_PROPERTY_COLOR:[I

    iget-object v6, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    aget-byte v6, v6, v7

    aget v5, v5, v6

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    aget-byte v1, v1, v7

    if-eq p4, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    aget-byte v1, v1, v7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0xbf

    invoke-static {v8, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xc0

    invoke-static {v8, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/FaBao;->pinZhi:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/FaBao;->quility:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FaBao;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/FaBao;->upGrade:B

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/FaBao;->upGrade:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPropety()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/t4game/CommonConstants;->WUXING_PROPERTY_NAMES:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/FaBao;->propetyId:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSkillSize()B
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    aget-byte v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    return v0
.end method

.method public initSkill(B)V
    .locals 1

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/FaBao;->skillName:[Ljava/lang/String;

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/t4game/FaBao;->skillPropetyId:[B

    iget-byte v0, p0, Lcom/t4game/FaBao;->currentSkillNum:B

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/FaBao;->skillIcon:[S

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/t4game/FaBao;->skillLevel:[B

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/FaBao;->skillId:[S

    goto :goto_0
.end method
