.class public Lcom/t4game/DianHua;
.super Ljava/lang/Object;


# static fields
.field public static final DIALOG:B = 0x0t

.field public static final DIANHUA:B = 0x2t

.field public static final MENU:B = 0x1t

.field private static dianhua:Lcom/t4game/DianHua;


# instance fields
.field addValue0:[Ljava/lang/String;

.field addValue1:[Ljava/lang/String;

.field private color1:[I

.field private color2:[I

.field private dhCurValue:I

.field private dhLevel:I

.field private dhTotalValue:I

.field private dianhuatype:B

.field private flag:Z

.field private gameWorld:Lcom/t4game/GameWorld;

.field private img:[Ljavax/microedition/lcdui/Image;

.field private index:I

.field private info:[Ljava/lang/String;

.field private list1:Lcom/t4game/UList;

.field private list2:Lcom/t4game/UList;

.field private menu:Lcom/t4game/UI_Menu;

.field private npcID:[B

.field private npcMenu:[[Ljava/lang/String;

.field private npcMenuBepen:[[B

.field private npcMenuID:[[B

.field private npcNum:B

.field private offx:I

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private str1:[Ljava/lang/String;

.field private str2:[Ljava/lang/String;

.field strNum:B

.field private vecColor:Ljava/util/Vector;

.field private vecStr:Ljava/util/Vector;

.field private viewState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/DianHua;->dianhua:Lcom/t4game/DianHua;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iput-object v2, p0, Lcom/t4game/DianHua;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v2, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v2, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iput-byte v5, p0, Lcom/t4game/DianHua;->viewState:B

    iput-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    iput v4, p0, Lcom/t4game/DianHua;->index:I

    iput-byte v6, p0, Lcom/t4game/DianHua;->npcNum:B

    iput-object v2, p0, Lcom/t4game/DianHua;->npcID:[B

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/DianHua;->npcMenuBepen:[[B

    iput-object v2, p0, Lcom/t4game/DianHua;->str1:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->color1:[I

    iput-object v2, p0, Lcom/t4game/DianHua;->str2:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->color2:[I

    iput-object v2, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iput-object v2, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    iput-byte v5, p0, Lcom/t4game/DianHua;->dianhuatype:B

    iput v5, p0, Lcom/t4game/DianHua;->dhLevel:I

    iput v5, p0, Lcom/t4game/DianHua;->dhCurValue:I

    iput v5, p0, Lcom/t4game/DianHua;->dhTotalValue:I

    iput-object v2, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    iput-object v2, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    iput v5, p0, Lcom/t4game/DianHua;->offx:I

    iput-boolean v4, p0, Lcom/t4game/DianHua;->flag:Z

    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "\u9f99\u987b\u864e\uff1a\u5bf9\u6218\u5c0a\u3001\u5883\u754c\u70b9\u5316\uff0c\u63d0\u5347\u5c5e\u6027\uff0c\u83b7\u5f97\u8be5\u795e\u4eba\u7edd\u6280\u3002"

    aput-object v3, v1, v5

    const-string v3, "\u9ec4\u9f99\u771f\u4eba\uff1a\u5bf9\u516b\u5366\u3001\u661f\u56fe\u70b9\u5316\uff0c\u63d0\u5347\u5c5e\u6027\uff0c\u83b7\u5f97\u8be5\u795e\u4eba\u7edd\u6280\u3002"

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "\u6258\u5854\u674e\u5929\u738b\uff1a\u5bf9\u4e94\u884c\u3001\u70bc\u9b42\u70b9\u5316\uff0c\u63d0\u5347\u5c5e\u6027\uff0c\u83b7\u5f97\u8be5\u795e\u4eba\u7edd\u6280\u3002"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "\u4e8c\u90ce\u795e\u3001\u54ea\u5412\uff1a\u63d0\u5347\u5404\u795e\u4eba\u70b9\u5316\u6548\u679c\uff0c\u83b7\u5f97\u8be5\u795e\u4eba\u7edd\u6280\u3002"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->addValue1:[Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/DianHua;->strNum:B

    return-void
.end method

.method private drawDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x4

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/t4game/DianHua;->flag:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/t4game/DianHua;->offx:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/DianHua;->offx:I

    iget v0, p0, Lcom/t4game/DianHua;->offx:I

    if-le v0, v4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/DianHua;->flag:Z

    :cond_0
    :goto_0
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v6

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x14

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_1
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-le v0, v6, :cond_1

    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v7

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_1
    :goto_2
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-le v0, v7, :cond_2

    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-eq v0, v7, :cond_7

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v8

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sub-int/2addr v1, v5

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x23

    sub-int/2addr v2, v3

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    :goto_3
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-le v0, v8, :cond_3

    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-eq v0, v8, :cond_8

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v4

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/DianHua;->getStrW(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x168

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_5
    return-void

    :cond_4
    iget v0, p0, Lcom/t4game/DianHua;->offx:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/t4game/DianHua;->offx:I

    iget v0, p0, Lcom/t4game/DianHua;->offx:I

    const/4 v1, -0x4

    if-ge v0, v1, :cond_0

    iput-boolean v6, p0, Lcom/t4game/DianHua;->flag:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v6

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v2, p0, Lcom/t4game/DianHua;->offx:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v7

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DianHua;->offx:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v8

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    iget v2, p0, Lcom/t4game/DianHua;->offx:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x23

    sub-int/2addr v2, v3

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v4

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DianHua;->offx:I

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x168

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    goto/16 :goto_5
.end method

.method private drawDianhua(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/16 v8, 0x15

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc04

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DianHua;->dhLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x98c

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->y:I

    iget-object v3, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->h:I

    add-int/2addr v2, v3

    const/16 v3, 0x11

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v1, p0, Lcom/t4game/DianHua;->dhCurValue:I

    iget v2, p0, Lcom/t4game/DianHua;->dhTotalValue:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v0, 0xe

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v0, v0, Lcom/t4game/UList;->y:I

    iget-object v4, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v4, v4, Lcom/t4game/UList;->h:I

    add-int/2addr v0, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v5, v0, Lcom/t4game/UList;->w:I

    sget v6, Lcom/t4game/Defaults;->sfh:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DianHua;->strNum:B

    if-lez v0, :cond_3

    :goto_0
    iget-byte v0, p0, Lcom/t4game/DianHua;->strNum:B

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v0, v0, Lcom/t4game/UList;->rowY:I

    sub-int v0, v7, v0

    iget-object v1, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowNum:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v0, v0, Lcom/t4game/UList;->rowY:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Lcom/t4game/DianHua;->getStrW(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xe

    add-int/lit8 v1, v0, 0x32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/DianHua;->addValue1:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->y:I

    iget-object v3, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->rowY:I

    sub-int v3, v7, v3

    iget-object v4, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v4, v4, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v4, v4, v8

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v5, v5, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawMenu(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/16 v3, 0x168

    const/4 v8, 0x2

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x4

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v6

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x14

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x19

    sub-int/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v8

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-le v0, v8, :cond_1

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sub-int/2addr v1, v7

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x23

    sub-int/2addr v2, v4

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/DianHua;->getStrW(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/t4game/DianHua;->info:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/DianHua;->index:I

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    goto :goto_0
.end method

.method public static getInstance()Lcom/t4game/DianHua;
    .locals 1

    sget-object v0, Lcom/t4game/DianHua;->dianhua:Lcom/t4game/DianHua;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/DianHua;

    invoke-direct {v0}, Lcom/t4game/DianHua;-><init>()V

    sput-object v0, Lcom/t4game/DianHua;->dianhua:Lcom/t4game/DianHua;

    :cond_0
    sget-object v0, Lcom/t4game/DianHua;->dianhua:Lcom/t4game/DianHua;

    return-object v0
.end method

.method private getPointerIndex(I)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v1, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    iget-object v3, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x23

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v1, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto/16 :goto_0

    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getStrW(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

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

.method private initDialog()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    :try_start_0
    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    const-string v2, "/dianhua/bg.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x1

    const-string v2, "/dianhua/lf.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x2

    const-string v2, "/dianhua/center.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x3

    const-string v2, "/dianhua/rt.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x4

    const-string v2, "/dianhua/top.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput v3, p0, Lcom/t4game/DianHua;->index:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initDianhua()V
    .locals 6

    const/16 v3, 0x14c

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget-object v1, p0, Lcom/t4game/DianHua;->str1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DianHua;->color1:[I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UList;->init([Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    const/16 v2, 0x25

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    iget-object v1, p0, Lcom/t4game/DianHua;->str2:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DianHua;->color2:[I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UList;->init([Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    iget-object v2, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->y:I

    iget-object v4, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    iget v4, v4, Lcom/t4game/UList;->h:I

    add-int/2addr v2, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    const/16 v4, 0xc8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    const/16 v5, 0x20

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    return-void
.end method

.method private initMenu()V
    .locals 3

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    new-instance v0, Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/DianHua;->index:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/DianHua;->npcMenuBepen:[[B

    iget v2, p0, Lcom/t4game/DianHua;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Menu;->setDisableItemIndex([B)V

    return-void
.end method

.method private keyDialog(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-byte v4, p0, Lcom/t4game/DianHua;->viewState:B

    invoke-virtual {p0}, Lcom/t4game/DianHua;->release()V

    iget-object v0, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_0

    :pswitch_1
    iput-byte v1, p0, Lcom/t4game/DianHua;->viewState:B

    invoke-virtual {p0, v1}, Lcom/t4game/DianHua;->init(B)V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-lt v0, v2, :cond_0

    iput v2, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-lt v0, v2, :cond_1

    iput v3, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v1, :cond_2

    iput v4, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v3, :cond_3

    iput v1, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v2, :cond_0

    iput v4, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-lt v0, v3, :cond_4

    iput v1, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-lt v0, v2, :cond_5

    iput v3, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v3, :cond_6

    iput v4, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/DianHua;->index:I

    if-ne v0, v2, :cond_0

    iput v3, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private keyDianhua(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    :cond_0
    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/t4game/DianHua;->sendDianHuaMsg(B)V

    goto :goto_0

    :pswitch_1
    iput-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private keyMenu(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-byte v2, p0, Lcom/t4game/DianHua;->viewState:B

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iget-byte v1, v1, Lcom/t4game/UI_Menu;->index:B

    invoke-direct {p0, v1}, Lcom/t4game/DianHua;->testDisable(B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iput-byte v2, p0, Lcom/t4game/DianHua;->viewState:B

    goto :goto_0

    :cond_2
    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/t4game/DianHua;->sendMenuMsg(S)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private processDialog()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/DianHua;->npcID:[B

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/t4game/DianHua;->npcMenuBepen:[[B

    move v1, v6

    :goto_0
    iget-byte v0, p0, Lcom/t4game/DianHua;->npcNum:B

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DianHua;->npcID:[B

    iget-object v2, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v2, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    new-array v3, v0, [B

    aput-object v3, v2, v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v6

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    aput-byte v5, v4, v3

    iget-object v4, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/DianHua;->npcMenuBepen:[[B

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [B

    aput-object v3, v0, v1

    move v3, v6

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DianHua;->npcMenuBepen:[[B

    aget-object v4, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    int-to-byte v0, v0

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto :goto_0

    :cond_3
    iput-byte v6, p0, Lcom/t4game/DianHua;->viewState:B

    invoke-virtual {p0, v6}, Lcom/t4game/DianHua;->init(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    const/16 v1, -0x1f

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    return-void
.end method

.method private processDianhua()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x25c

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMenu()V
    .locals 15

    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const-string v12, ""

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v13, :cond_9

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/DianHua;->dianhuatype:B

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u603b\u5c5e\u6027"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v2, v2, v11

    invoke-direct {p0, v0, v2}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/DianHua;->strNum:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v2, v2, v11

    invoke-direct {p0, v0, v2}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DianHua;->str1:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/DianHua;->color1:[I

    move v2, v10

    :goto_0
    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/t4game/DianHua;->str1:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/t4game/DianHua;->color1:[I

    iget-object v3, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->addValue1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    const-string v3, ""

    aput-object v12, v2, v10

    iget-object v2, p0, Lcom/t4game/DianHua;->addValue1:[Ljava/lang/String;

    const-string v3, ""

    aput-object v12, v2, v10

    move v2, v10

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/t4game/DianHua;->addValue0:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/t4game/DianHua;->addValue1:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v4, v4, v11

    invoke-direct {p0, v3, v4}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/DianHua;->dhLevel:I

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/DianHua;->dhCurValue:I

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/DianHua;->dhTotalValue:I

    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    invoke-direct {p0, v0, v3}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v14

    invoke-direct {p0, v2, v0}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u70b9\u5316\u81f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u91cd\u6761\u4ef6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v2, v2, v11

    invoke-direct {p0, v0, v2}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v2, v10

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iget-object v4, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v13, :cond_3

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v3, v3, v14

    invoke-direct {p0, v4, v3}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v3, v3, v13

    invoke-direct {p0, v4, v3}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\u672c\u7ea7\u6280\u80fd\uff1a"

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v4, v4, v11

    invoke-direct {p0, v3, v4}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    invoke-direct {p0, v0, v3}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    :cond_5
    const-string v0, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u4e0b\u7ea7\u6280\u80fd\uff1a"

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v3, v3, v11

    invoke-direct {p0, v0, v3}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v14

    invoke-direct {p0, v2, v0}, Lcom/t4game/DianHua;->vecAdd(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DianHua;->str2:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/DianHua;->color2:[I

    move v2, v10

    :goto_4
    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lcom/t4game/DianHua;->str2:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/t4game/DianHua;->color2:[I

    iget-object v3, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/DianHua;->init(B)V

    if-nez v1, :cond_8

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    :cond_8
    :goto_5
    return-void

    :cond_9
    iget-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private testDisable(B)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iget-object v1, v1, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    iget-object v1, v1, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private vecAdd(Ljava/lang/String;I)V
    .locals 4

    const/16 v0, 0x14c

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1f

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u70b9\u5316"

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->drawDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->drawMenu(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->drawDianhua(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/DianHua;->initDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/DianHua;->initMenu()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/DianHua;->initDianhua()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public keyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1f

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->keyDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->keyMenu(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/DianHua;->keyDianhua(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pointerEvent()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1f

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DianHua;->viewState:B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/DianHua;->index:I

    invoke-direct {p0, v0}, Lcom/t4game/DianHua;->getPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/t4game/DianHua;->index:I

    goto :goto_0
.end method

.method public processMsg(I)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/DianHua;->processDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/DianHua;->processMenu()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/DianHua;->processDianhua()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/t4game/DianHua;->img:[Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v1, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/t4game/DianHua;->list1:Lcom/t4game/UList;

    :cond_1
    iget-object v1, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/t4game/DianHua;->list2:Lcom/t4game/UList;

    :cond_2
    iput-object v2, p0, Lcom/t4game/DianHua;->npcID:[B

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/DianHua;->npcMenu:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    iput-object v2, p0, Lcom/t4game/DianHua;->str1:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->str2:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DianHua;->color1:[I

    iput-object v2, p0, Lcom/t4game/DianHua;->color2:[I

    iput-object v2, p0, Lcom/t4game/DianHua;->vecStr:Ljava/util/Vector;

    iput-object v2, p0, Lcom/t4game/DianHua;->vecColor:Ljava/util/Vector;

    return-void
.end method

.method public sendDialogMsg()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25a

    iget-object v2, p0, Lcom/t4game/DianHua;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public sendDianHuaMsg(B)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DianHua;->dianhuatype:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25c

    iget-object v2, p0, Lcom/t4game/DianHua;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public sendMenuMsg(S)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/DianHua;->npcMenuID:[[B

    iget v2, p0, Lcom/t4game/DianHua;->index:I

    aget-object v1, v1, v2

    aget-byte v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25b

    iget-object v2, p0, Lcom/t4game/DianHua;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public setContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iput-object p1, p0, Lcom/t4game/DianHua;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/DianHua;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/DianHua;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/DianHua;->readBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-object v0, p0, Lcom/t4game/DianHua;->menu:Lcom/t4game/UI_Menu;

    return-void
.end method
