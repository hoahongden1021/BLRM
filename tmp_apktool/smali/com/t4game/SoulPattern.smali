.class public Lcom/t4game/SoulPattern;
.super Ljava/lang/Object;


# static fields
.field private static soulPattern:Lcom/t4game/SoulPattern;


# instance fields
.field private final Dialog_Get_Details:B

.field private final Dialog_Get_Main:B

.field private final Dialog_Soul_Append:B

.field private final Dialog_Soul_Append_AlertNote_Repeat:B

.field private final Dialog_Soul_Append_AlertNote_Save:B

.field private final Dialog_Soul_Change:B

.field private final Dialog_Soul_Level_Details:B

.field private final Dialog_Soul_Main:B

.field private final Dialog_Soul_Merge:B

.field private Type_Blue:B

.field private Type_Green:B

.field private Type_Orange:B

.field private Type_Purple:B

.field private Type_White:B

.field private attributrsStrings:[Ljava/lang/String;

.field private boxsNum:B

.field private changeRate:[[B

.field private changeSoulItemHashtable:Ljava/util/Hashtable;

.field private colorOutFitDetails:[I

.field private command:B

.field private describeStrings:[Ljava/lang/String;

.field private dialogId:B

.field private endIndex:B

.field private gs:Lcom/t4game/GameScreen;

.field private gw:Lcom/t4game/GameWorld;

.field private h:I

.field private iconImage:Ljavax/microedition/lcdui/Image;

.field private images:[Ljavax/microedition/lcdui/Image;

.field private index_select_1:B

.field private index_select_2:B

.field private index_select_3:B

.field private isLeftFocus_Merge:Z

.field private isOpen:[B

.field private isOpenEffect:B

.field private lastTime:J

.field private leftX:I

.field private levelOutFit:B

.field private menu:Lcom/t4game/UI_Menu;

.field private menuStringCanUse:[B

.field private menuStrings:[[Ljava/lang/String;

.field private mergeItems:[B

.field private mergeResultQuality:S

.field private nameSpiritDemonByQuality:[Ljava/lang/String;

.field private num:B

.field private outFitOn:[Lcom/t4game/RoleOutfit;

.field private position_X:[I

.field private position_Y:[I

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private resultSoulItemVector:Ljava/util/Vector;

.field private seImageIndex:B

.field private selectImage:Ljavax/microedition/lcdui/Image;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private soulItemHashtable:Ljava/util/Hashtable;

.field private soulRoleGood:Lcom/t4game/SoulRoleGood;

.field private startIndex:B

.field tagStrings:[Lcom/t4game/TagString;

.field private targetItem:Lcom/t4game/SoulItem;

.field private topY:I

.field private totalNum:[I

.field private ui:Lcom/t4game/GameUi;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/SoulPattern;->soulPattern:Lcom/t4game/SoulPattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v3, p0, Lcom/t4game/SoulPattern;->dialogId:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->Dialog_Get_Main:B

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->Dialog_Get_Details:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Main:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Merge:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Append:B

    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Level_Details:B

    const/4 v1, 0x6

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Append_AlertNote_Save:B

    const/16 v1, 0x8

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Append_AlertNote_Repeat:B

    const/4 v1, 0x7

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Dialog_Soul_Change:B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->startIndex:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->Type_White:B

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->Type_Green:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->Type_Blue:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Purple:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Orange:B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->levelOutFit:B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    iput-byte v3, p0, Lcom/t4game/SoulPattern;->command:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->num:B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    iput-short v4, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    iput-boolean v4, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    iput v4, p0, Lcom/t4game/SoulPattern;->topY:I

    iput v4, p0, Lcom/t4game/SoulPattern;->leftX:I

    iput v4, p0, Lcom/t4game/SoulPattern;->w:I

    iput v4, p0, Lcom/t4game/SoulPattern;->h:I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    return-void
.end method

.method private draw_Get_Details(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v8, -0x1

    const-string v1, "\u5bfb\u5996\u5f55\u8be6\u60c5"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v0, 0x164

    iget-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-ne v0, v7, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x13

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    aget v5, v4, v7

    move v4, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x12

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0x168

    iget v4, p0, Lcom/t4game/SoulPattern;->leftX:I

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v6, 0xffc700

    move v5, v8

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2
.end method

.method private draw_Get_Main(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const-string v1, "\u5bfb\u5996\u5f55"

    const/16 v2, 0x96

    invoke-static {p1, v1, v2}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v1, 0x8e

    iput v1, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v1, 0xbe

    iput v1, p0, Lcom/t4game/SoulPattern;->h:I

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/t4game/SoulPattern;->h:I

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/t4game/SoulPattern;->h:I

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    move v4, v1

    :goto_1
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/t4game/SoulPattern;->w:I

    if-le v1, v5, :cond_4

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget v6, p0, Lcom/t4game/SoulPattern;->h:I

    if-le v1, v6, :cond_5

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    move v6, v1

    :goto_3
    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v7, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/t4game/SoulPattern;->w:I

    if-le v7, v8, :cond_6

    const/4 v7, 0x0

    :goto_4
    add-int/2addr v7, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v8, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/t4game/SoulPattern;->h:I

    if-le v8, v9, :cond_7

    const/4 v8, 0x0

    :goto_5
    add-int/2addr v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    const/4 v1, 0x0

    move v11, v1

    :goto_6
    const/4 v1, 0x5

    if-ge v11, v1, :cond_9

    iget-object v1, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    aget-byte v1, v1, v11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v2, v11, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    aget v2, v2, v11

    iget-object v3, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    aget v3, v3, v11

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_7
    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-ne v1, v11, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/t4game/SoulPattern;->lastTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    rem-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/t4game/SoulPattern;->lastTime:J

    :cond_0
    iget-object v2, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->seImageIndex:B

    mul-int/2addr v3, v1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget-object v1, p0, Lcom/t4game/SoulPattern;->position_X:[I

    aget v1, v1, v11

    iget-object v7, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v1, v7

    const/4 v7, 0x2

    sub-int v7, v1, v7

    iget-object v1, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    aget v8, v1, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_6

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    move v5, v1

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    move v6, v1

    goto/16 :goto_3

    :cond_6
    iget v7, p0, Lcom/t4game/SoulPattern;->w:I

    iget-object v8, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_7
    iget v8, p0, Lcom/t4game/SoulPattern;->h:I

    iget-object v9, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v2, v11, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    aget v2, v2, v11

    iget-object v3, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    aget v3, v3, v11

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_7

    :cond_9
    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x96

    iput v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const-string v1, "\u5524\u7d2b\u5996"

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    iget-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-nez v6, :cond_b

    const/4 v6, 0x1

    move v7, v6

    :goto_8
    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    :goto_9
    const-string v1, "\u5bfb\u5996\u74f6"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x168

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    iget-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    const/4 v6, 0x1

    move v7, v6

    :goto_a
    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    array-length v1, v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    :cond_a
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/t4game/TagString;

    iput-object v1, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x6

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    new-instance v3, Lcom/t4game/TagString;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    aget-object v4, v4, v1

    const v5, 0xffc700

    const/16 v6, 0xd2

    invoke-direct {v3, v4, v5, v6}, Lcom/t4game/TagString;-><init>(Ljava/lang/String;IS)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    move v7, v6

    goto :goto_8

    :cond_c
    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0x8

    invoke-static {v1, v2, v3, v4, p1}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const-string v1, "\u5524\u7d2b\u5996"

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sget-object v6, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    goto/16 :goto_9

    :cond_d
    const/4 v6, 0x0

    move v7, v6

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x6

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v2, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/t4game/TagString;->analyzeTagString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/t4game/SoulPattern;->h:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/t4game/SoulPattern;->w:I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-nez v1, :cond_12

    const v1, 0xffc700

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    :cond_10
    :goto_d
    iget-object v1, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_17

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_13

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    :goto_e
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v1

    const/4 v2, 0x7

    iget v3, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v5, 0xcc

    const/16 v6, 0xe8

    iget v7, p0, Lcom/t4game/SoulPattern;->topY:I

    sub-int/2addr v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const-string v1, "\u4e0a\u6b21\u5bfb\u5996\u83b7\u5f97\uff1a"

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffc700

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v1, 0x0

    move v12, v1

    :goto_f
    iget-object v1, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v12, v1, :cond_17

    iget-object v1, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    invoke-virtual {v1, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/t4game/SoulItem;

    move-object v11, v0

    if-eqz v11, :cond_11

    rem-int/lit8 v1, v12, 0x2

    if-nez v1, :cond_15

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v7, v1, 0xa

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v8, v1, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v3, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    sget-object v6, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_11
    :goto_10
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_f

    :cond_12
    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const v1, 0xffc700

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->tagStrings:[Lcom/t4game/TagString;

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    goto/16 :goto_d

    :cond_13
    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    goto/16 :goto_e

    :cond_14
    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v7, v1, 0xa

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v8, v1, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v3, v3, 0x4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    sget-object v6, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_10

    :cond_15
    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v7, v1, 0x69

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v8, v1, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0x69

    iget-object v3, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v3, v3, 0x8

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    sget-object v6, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_11
    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    goto/16 :goto_10

    :cond_16
    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v7, v1, 0x69

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v8, v1, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x69

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v3, v3, 0x8

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    sget-object v6, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_11

    :cond_17
    sget v1, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v1, v1, 0xc8

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/t4game/SoulPattern;->topY:I

    const-string v1, "\u8be6\u60c5"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v3, 0x168

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const-string v5, "\u8be6\u60c5"

    invoke-virtual {v4, v5}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const-string v5, "\u8be6\u60c5"

    invoke-virtual {v4, v5}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    return-void
.end method

.method private draw_Right_Soul_Main_Soul_Merge(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/UI_GoodsBox;B)V
    .locals 19

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v6, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v5, 0x1c

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->w:I

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->topY:I

    const/16 v5, 0xd2

    sget v6, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    div-int/2addr v5, v6

    int-to-byte v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/SoulPattern;->num:B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    sget v6, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->leftX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    const/16 v6, 0xd2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v7, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v8, v0

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    add-int/lit16 v6, v6, 0x96

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->leftX:I

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->boxsNum:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v6, v0

    div-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v6, v0

    mul-int/2addr v6, v5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->boxsNum:B

    move v7, v0

    if-ge v6, v7, :cond_d

    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v5

    :goto_0
    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    const/4 v5, 0x0

    move/from16 v18, v5

    :goto_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v5, v0

    mul-int v5, v5, v17

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->boxsNum:B

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_3
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    move-object v5, v0

    new-instance v6, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v7, v0

    mul-int v7, v7, v17

    add-int v7, v7, v18

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/t4game/SoulItem;

    move-object v15, v0

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getType()B

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v11, v0

    mul-int v11, v11, v18

    add-int/2addr v5, v11

    add-int/lit8 v11, v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v5, v0

    add-int/lit8 v12, v5, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :goto_4
    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v5

    if-gez v5, :cond_3

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x19

    const/16 v8, 0x19

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const v5, 0xffc700

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    add-int/lit8 v6, v6, 0x12

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v7

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v11, v0

    mul-int v11, v11, v18

    add-int/2addr v5, v11

    add-int/lit8 v11, v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v5, v0

    add-int/lit8 v12, v5, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_4

    :cond_3
    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v6

    aget v5, v5, v6

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    add-int/lit8 v6, v6, 0x12

    invoke-virtual {v15}, Lcom/t4game/SoulItem;->getNum()I

    move-result v7

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->topY:I

    const/4 v5, 0x0

    move v11, v5

    :goto_6
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    const/4 v5, 0x0

    move v12, v5

    :goto_7
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v5, v0

    if-ge v12, v5, :cond_b

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v5, v0

    mul-int/2addr v5, v11

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->boxsNum:B

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_8

    :cond_7
    :goto_8
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_7

    :cond_8
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    move v5, v0

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v5, v0

    mul-int/2addr v5, v11

    add-int/2addr v5, v12

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x6

    const/4 v6, 0x3

    if-ge v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v7, v0

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    move-object v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    move-object v5, v0

    new-instance v6, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/SoulPattern;->num:B

    move v7, v0

    mul-int/2addr v7, v11

    add-int/2addr v7, v12

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/t4game/SoulItem;

    move-object v9, v0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/t4game/SoulItem;->getType()B

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    invoke-virtual {v9}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v9, v0

    add-int/2addr v8, v9

    sget-object v9, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v10, 0x3

    aget v10, v9, v10

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v9}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    invoke-virtual {v9}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->leftX:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v8, v0

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v10, v0

    add-int/2addr v8, v10

    sget-object v10, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v9}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v9

    aget v10, v10, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->topY:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/SoulPattern;->w:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_6

    :cond_c
    return-void

    :cond_d
    move/from16 v16, v5

    goto/16 :goto_0
.end method

.method private draw_Soul_Append(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v1, "\u88c5\u5907\u9644\u7075\u91cd\u94f8"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v7

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v3, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v4

    aget-object v4, v3, v4

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintGoodsIconWithRoleGoodGrade(IILjavax/microedition/lcdui/Graphics;Lcom/t4game/RoleGoods;[I)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    div-int v8, v0, v1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_0
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    add-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->endIndex:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_3

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7075\u7eb9\u9644\u7075\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v2

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/t4game/RoleGoods;->grade:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getExp_now()I

    move-result v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getExp_all()I

    move-result v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget v4, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v5, 0x5a

    sget v6, Lcom/t4game/Defaults;->sfh:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    const-string v0, "\u9644\u7075"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_4
    const-string v0, "\u5f53\u524d\u5c5e\u6027(\u9644\u7075\u4e00\u6b21\u5c5e\u6027)"

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_5
    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v2, 0x2

    if-le v1, v2, :cond_13

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    move v7, v0

    :goto_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    if-ge v7, v0, :cond_6

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    if-le v0, v1, :cond_b

    :cond_6
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v7, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_7
    :goto_2
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_9
    return-void

    :cond_a
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_0

    :cond_b
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v1, v7, 0x2

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x8

    invoke-static {v0, v1, v2, v3, p1}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u91cd\u94f8"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v6, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v6}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v6

    aget-object v6, v6, v7

    const/4 v9, 0x0

    aget-byte v6, v6, v9

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u91cd\u94f8"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v6, v7, 0x2

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    move v6, v5

    :goto_5
    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    goto/16 :goto_4

    :cond_d
    const/4 v5, 0x0

    move v6, v5

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x8

    invoke-static {v0, v1, v2, v3, p1}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u91cd\u94f8"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v6, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v6}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v6

    aget-object v6, v6, v7

    const/4 v9, 0x0

    aget-byte v6, v6, v9

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u91cd\u94f8"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v2, v2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-byte v5, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v6, v7, 0x2

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    move v6, v5

    :goto_6
    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    move v6, v5

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_13
    move v7, v0

    goto/16 :goto_1
.end method

.method private draw_Soul_Append_AlertNote_Repeat(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    const-string v2, "\u7ee7\u7eed\u91cd\u94f8"

    const-string v3, "\u505c\u6b62"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->paintAlertColorSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private draw_Soul_Append_AlertNote_Save(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    const-string v2, "\u4fdd\u7559"

    const-string v3, "\u4e0d\u4fdd\u7559"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->paintAlertColorSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private draw_Soul_Change(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v0, "\u5996\u795e\u7cbe\u9b44\u8f6c\u5316"

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    const/16 v0, 0x4b

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :goto_0
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->getTotalNumChangeSoulHashtable()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_4

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/16 v2, 0x12

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x18

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_2
    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    const/16 v4, 0xf

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    sub-int v1, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/16 v2, 0xa

    sub-int v2, v0, v2

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x6

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v4, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    const/16 v4, 0xa

    sub-int v4, v0, v4

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v5, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v6, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    const/16 v6, 0xa

    sub-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :goto_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    const/16 v1, 0x17

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_4
    const-string v0, "\u4e00\u952e\u653e\u5165"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x96

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    const/16 v2, 0xcc

    sget v3, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v3, v3, 0x5

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/SoulPattern;->draw_Right_Soul_Main_Soul_Merge(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/UI_GoodsBox;B)V

    const-string v0, "\u8f6c\u5316"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    const/16 v2, 0xcc

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const-string v0, "\u5378\u4e0b"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    const/16 v2, 0xcc

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x64

    if-lt v0, v1, :cond_5

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/16 v2, 0xd

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x18

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x18

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x18

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_a

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    const/16 v1, 0x12

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    const/16 v1, 0xd

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4
.end method

.method private draw_Soul_Level_Details(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v7, 0x96

    const/4 v6, 0x0

    const-string v0, "\u5957\u88c5\u6fc0\u6d3b\u6548\u679c"

    invoke-static {p1, v0, v7}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x4b

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    sget v0, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v1, v7, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v0, 0xcc

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    if-nez v0, :cond_0

    const-string v0, "\u5173\u95ed\u5957\u88c5\u6548\u679c"

    :goto_0
    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lcom/t4game/UI_Super;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    return-void

    :cond_0
    const-string v0, "\u5f00\u542f\u5957\u88c5\u6548\u679c"

    goto :goto_0
.end method

.method private draw_Soul_Main(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v7, 0x0

    const-string v8, "\u67e5\u770b\u5957\u88c5\u6fc0\u6d3b\u6548\u679c"

    const-string v0, "\u5305\u88f9"

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v7}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v6

    iget-short v0, v6, Lcom/t4game/UI_GoodsBox;->x:S

    iget-short v1, v6, Lcom/t4game/UI_GoodsBox;->w:S

    shr-int/lit8 v1, v1, 0x1

    add-int v2, v0, v1

    iget-short v0, v6, Lcom/t4game/UI_GoodsBox;->y:S

    iget-short v1, v6, Lcom/t4game/UI_GoodsBox;->h:S

    add-int/lit8 v1, v1, 0x1e

    shr-int/lit8 v1, v1, 0x1

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v6, p1, v7, v0}, Lcom/t4game/UI_GoodsBox;->drawWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;S[I)V

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {p0, p1, v6, v0}, Lcom/t4game/SoulPattern;->draw_Right_Soul_Main_Soul_Merge(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/UI_GoodsBox;B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v0, p1, v1}, Lcom/t4game/GameUi;->drawBubbleWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;[I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v0, v0, 0xc8

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7075\u7eb9\u5957\u88c5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->levelOutFit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u67e5\u770b\u5957\u88c5\u6fc0\u6d3b\u6548\u679c"

    sget v0, Lcom/t4game/PointerUtil;->FAST_VIEW_X:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    sub-int v1, v0, v1

    const/16 v2, 0xeb

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const-string v3, "\u67e5\u770b\u5957\u88c5\u6fc0\u6d3b\u6548\u679c"

    invoke-virtual {v0, v8}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    sget v4, Lcom/t4game/Defaults;->sfh:I

    move-object v0, v8

    move-object v5, p1

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0
.end method

.method private draw_Soul_Merge(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v3, 0x0

    const-string v0, "\u5996\u795e\u7cbe\u9b44\u8fdb\u9636"

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    const/16 v0, 0x15

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v3

    if-le v0, v12, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-ne v1, v11, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-nez v0, :cond_1

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-ge v0, v10, :cond_9

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v10

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v10

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v11

    if-le v0, v12, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v2, v2, v11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-ne v1, v11, :cond_2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_2
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-ne v0, v11, :cond_3

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-ge v0, v10, :cond_a

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v10

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v10

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v13

    if-le v0, v12, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v2, v2, v13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-ne v1, v11, :cond_4

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-ne v0, v13, :cond_5

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-ge v0, v10, :cond_b

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v10

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v10

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_5
    :goto_2
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v10

    if-le v0, v12, :cond_6

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v2, v2, v10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-ne v1, v11, :cond_6

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_6
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-ne v0, v10, :cond_7

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-ge v0, v10, :cond_c

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v10

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v10

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_7
    :goto_3
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v2, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-short v0, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    if-le v0, v12, :cond_8

    iget-object v1, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iget-short v2, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v6, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v7, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_8
    const/16 v0, 0xcc

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    const-string v0, "\u540c\u54c1\u8d28\u7cbe\u9b44\u8f6c\u5316\u4e2a\u6570\u8d8a\u591a\uff0c\u8f6c\u5316\u6210\u9ad8\u7ea7\u7cbe\u9b44\u6982\u7387\u8d8a\u9ad8\u3002"

    const/16 v1, 0x96

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_d

    aget-object v4, v0, v1

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v2

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v6, Lcom/t4game/Defaults;->sfh:I

    array-length v7, v0

    sub-int/2addr v7, v1

    sub-int/2addr v7, v11

    mul-int/2addr v6, v7

    sub-int v6, v2, v6

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v9, 0xffc700

    move v8, v12

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    sub-int v4, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v1

    sub-int v5, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v7, v0, 0x1

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int v4, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v0, v1

    sub-int v5, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v7, v0, 0x1

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    sub-int v4, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int v5, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v7, v0, 0x1

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int v4, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int v5, v0, v1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v6, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int v7, v0, v11

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int v4, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int v5, v0, v11

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/lit8 v7, v0, 0x1

    move v8, v3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/SoulPattern;->draw_Right_Soul_Main_Soul_Merge(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/UI_GoodsBox;B)V

    const-string v4, "\u8fdb\u9636"

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int v5, v0, v1

    const/16 v6, 0xcc

    sget v0, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v7, v0, 0x2

    sget v8, Lcom/t4game/Defaults;->sfh:I

    move-object v9, p1

    move v10, v3

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const-string v4, "\u5378\u4e0b"

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0xa

    sub-int v5, v0, v1

    const/16 v6, 0xcc

    sget v0, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v7, v0, 0x2

    sget v8, Lcom/t4game/Defaults;->sfh:I

    move-object v9, p1

    move v10, v3

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const-string v4, "\'0\'\u952e\u4e00\u952e\u8fdb\u9636"

    sget v5, Lcom/t4game/PointerUtil;->FAST_VIEW_X:I

    const/16 v6, 0xeb

    sget v0, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v7, v0, 0x6

    sget v8, Lcom/t4game/Defaults;->sfh:I

    move-object v9, p1

    move v10, v3

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    return-void
.end method

.method public static getInstance()Lcom/t4game/SoulPattern;
    .locals 1

    sget-object v0, Lcom/t4game/SoulPattern;->soulPattern:Lcom/t4game/SoulPattern;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/SoulPattern;

    invoke-direct {v0}, Lcom/t4game/SoulPattern;-><init>()V

    sput-object v0, Lcom/t4game/SoulPattern;->soulPattern:Lcom/t4game/SoulPattern;

    :cond_0
    sget-object v0, Lcom/t4game/SoulPattern;->soulPattern:Lcom/t4game/SoulPattern;

    return-object v0
.end method

.method private getTotalNumChangeSoulHashtable()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method private init(B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Get_Mian()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Main()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Level_Details()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Merge()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Append()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Change()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private init_Get_Mian()V
    .locals 7

    const/16 v1, 0xb

    const/4 v3, 0x4

    const/4 v6, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    const-string v0, "/SoulPattern/icon.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_1

    const-string v0, "/SoulPattern/texiao.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    if-eq v0, v1, :cond_3

    :cond_2
    new-array v0, v1, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    const-string v2, "/SoulPattern/bj.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/SoulPattern/ying.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/SoulPattern/baicai.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x3

    const-string v2, "/SoulPattern/lang.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/SoulPattern/lvcai.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/SoulPattern/xiang.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x6

    const-string v2, "/SoulPattern/lancai.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x7

    const-string v2, "/SoulPattern/niu.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x8

    const-string v2, "/SoulPattern/zicai.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x9

    const-string v2, "/SoulPattern/hu.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0xa

    const-string v2, "/SoulPattern/chengcai.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    const/16 v0, 0xc8

    iget v1, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    iget v0, p0, Lcom/t4game/SoulPattern;->h:I

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0x96

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x4b

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    if-nez v0, :cond_4

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    :cond_4
    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Orange:B

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Purple:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Orange:B

    aget v2, v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Blue:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Purple:B

    aget v2, v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Green:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Blue:B

    aget v2, v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_White:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Green:B

    aget v2, v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    if-nez v0, :cond_5

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    :cond_5
    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Orange:B

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Purple:B

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Blue:B

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_Green:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Purple:B

    aget v2, v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->Type_White:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->Type_Blue:B

    aget v2, v2, v3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method private init_Soul_Append()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    return-void
.end method

.method private init_Soul_Change()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    return-void
.end method

.method private init_Soul_Level_Details()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GameUi;->release()V

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    :cond_0
    new-instance v2, Lcom/t4game/GameUi;

    invoke-direct {v2}, Lcom/t4game/GameUi;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    const-string v3, "/data/ui/commList1.bin"

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v4, 0x168

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, v2, Lcom/t4game/GameUi;->x:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    check-cast v2, Lcom/t4game/UI_List;

    move-object v0, v2

    check-cast v0, Lcom/t4game/UI_List;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, v2, Lcom/t4game/GameUi;->y:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    iget-short v2, v2, Lcom/t4game/GameUi;->y:S

    iput-short v2, v11, Lcom/t4game/UI_List;->y:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    iget-short v2, v2, Lcom/t4game/GameUi;->h:S

    iget-short v3, v11, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v2, v3

    const/16 v3, 0x20

    sub-int/2addr v2, v3

    iget-short v3, v11, Lcom/t4game/UI_List;->Row_H:S

    div-int/2addr v2, v3

    iget-short v3, v11, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v11, Lcom/t4game/UI_List;->h:S

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x96

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    iput-short v2, v11, Lcom/t4game/UI_List;->x:S

    const/16 v2, 0xc3

    iput-short v2, v11, Lcom/t4game/UI_List;->w:S

    iget-short v2, v11, Lcom/t4game/UI_List;->y:S

    iput-short v2, v11, Lcom/t4game/UI_List;->Sub_Y:S

    const/4 v2, 0x0

    const v3, 0x770d0f

    const v4, 0xffc700

    invoke-virtual {v11, v2, v3, v4}, Lcom/t4game/UI_List;->setTitle([Ljava/lang/String;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v12, v2

    move v2, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    move-object v3, v0

    aget-object v3, v3, v2

    iget-short v4, v11, Lcom/t4game/UI_List;->w:S

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v3, v4, v5}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v12

    add-int/lit8 v2, v2, 0x1

    move v12, v3

    goto :goto_0

    :cond_1
    new-array v13, v12, [I

    new-array v14, v12, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v2

    iget-short v5, v11, Lcom/t4game/UI_List;->w:S

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v4, v5, v6}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v18

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_2

    aget-object v6, v4, v3

    aput-object v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    move-object v6, v0

    aget v6, v6, v2

    aput v6, v13, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v15, v2

    :goto_3
    if-ge v15, v12, :cond_5

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    aget v3, v13, v15

    aput v3, v4, v2

    invoke-virtual {v11}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move v0, v2

    new-array v0, v0, [Lcom/t4game/ListItem;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_4
    invoke-virtual {v11}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_4

    new-instance v2, Lcom/t4game/ListItem;

    invoke-direct {v2}, Lcom/t4game/ListItem;-><init>()V

    aput-object v2, v16, v17

    aget-object v2, v16, v17

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, v14, v15

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_4

    :cond_4
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    iget-byte v3, v11, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    move-object v2, v0

    const/4 v3, 0x2

    iput-byte v3, v2, Lcom/t4game/GameUi;->commandType:B

    return-void
.end method

.method private init_Soul_Main()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    const-string v0, "/SoulPattern/icon.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/GameUi;

    invoke-direct {v1}, Lcom/t4game/GameUi;-><init>()V

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/pack_view.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    const-string v0, "/ui/outfitPos.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/Defaults;->outfitPosImg:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v6}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    array-length v0, v0

    new-array v0, v0, [Lcom/t4game/RoleGoods;

    iput-object v0, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v0}, Lcom/t4game/UI_GoodsBox;->setGameScreen(Lcom/t4game/GameScreen;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/t4game/UI_GoodsBox;->black_image:[B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/t4game/UI_GoodsBox;->position:[Ljava/lang/String;

    iput-boolean v7, v1, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v4, v4, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    iget-object v2, v1, Lcom/t4game/UI_GoodsBox;->position:[Ljava/lang/String;

    sget-object v3, Lcom/t4game/CommonConstants;->OUTFIT_POS_NAMES:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v4, v4, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    iget-object v2, v1, Lcom/t4game/UI_GoodsBox;->black_image:[B

    iget-object v3, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v7}, Lcom/t4game/GameScreen;->getUI_PageLable(I)Lcom/t4game/UI_PageLable;

    move-result-object v0

    iput-boolean v7, v0, Lcom/t4game/UI_PageLable;->showInside:Z

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v7}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iput-byte v7, v0, Lcom/t4game/GameUi;->lastPointedUi:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    iget-short v0, v1, Lcom/t4game/UI_GoodsBox;->x:S

    add-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    iput-short v0, v1, Lcom/t4game/UI_GoodsBox;->x:S

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    move v2, v6

    :goto_2
    iget-object v0, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v0, v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v3, v3, v2

    iget-short v3, v3, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v3, v7, [S

    iget-object v0, v1, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v0, v0, v2

    iget-short v0, v0, Lcom/t4game/RoleGoods;->iconId:S

    aput-short v0, v3, v6

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    sget-object v4, Lcom/t4game/CommonConstants;->GOOGS_PNG:[B

    aget-byte v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    invoke-static {v3}, Lcom/t4game/Util;->getTaxisId([S)[S

    move-result-object v3

    iget-object v5, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v0, v3, v5}, Lcom/t4game/GPNGGroupData;->getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, v4, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    goto :goto_3

    :cond_6
    return-void
.end method

.method private init_Soul_Merge()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, -0x1

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-short v2, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    return-void
.end method

.method private pointerEvent_Get_Details()V
    .locals 7

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v0, 0x164

    iget-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    :cond_0
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pointerEvent_Get_Mian()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x6

    const/4 v7, 0x1

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v0, 0x8e

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xbe

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    move v6, v9

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->position_X:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    aget v2, v2, v6

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-byte v0, v6

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x96

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x7

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v5, v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    if-ne v0, v7, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-ne v0, v7, :cond_4

    iput-byte v9, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    :cond_3
    :goto_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v5, v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-nez v0, :cond_5

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    goto :goto_1

    :cond_4
    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Get_Main(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Get_Main(I)V

    goto :goto_1
.end method

.method private pointerEvent_Right_Soul_Main_Soul_Merge()V
    .locals 11

    const/16 v4, 0xd2

    const/16 v3, 0x8

    const/4 v10, -0x5

    const/4 v9, 0x0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v9}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    div-int v0, v4, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->num:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->num:B

    if-le v0, v3, :cond_0

    iput-byte v3, p0, Lcom/t4game/SoulPattern;->num:B

    :cond_0
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->num:B

    mul-int/2addr v1, v2

    sub-int v1, v4, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit16 v1, v1, 0x96

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    div-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    mul-int/2addr v1, v0

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    if-ge v1, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    :goto_0
    move v7, v9

    :goto_1
    if-ge v7, v6, :cond_4

    move v8, v9

    :goto_2
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->num:B

    if-ge v8, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->num:B

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget v4, p0, Lcom/t4game/SoulPattern;->w:I

    iget v5, p0, Lcom/t4game/SoulPattern;->w:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v9}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iput-boolean v9, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    mul-int/2addr v1, v7

    add-int/2addr v1, v8

    if-eq v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->num:B

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Main(I)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Change(I)V

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_7
    move v6, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pointerEvent_Soul_Append()V
    .locals 11

    const/4 v10, -0x5

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v4, 0x168

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_MSG(B)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v7}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto :goto_1

    :cond_3
    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    div-int v6, v0, v1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_4
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    add-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v1, v9

    if-le v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_5
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_7

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-eqz v0, :cond_6

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append(I)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v8, :cond_9

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-eq v0, v9, :cond_8

    iput-byte v9, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append(I)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-le v0, v8, :cond_a

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    sub-int/2addr v0, v8

    move v7, v0

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_b

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v6

    add-int/2addr v1, v2

    if-le v0, v1, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    sub-int/2addr v0, v9

    if-lt v7, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_f

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v1, v7, 0x2

    if-eq v0, v1, :cond_d

    add-int/lit8 v0, v7, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, v10}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append(I)V

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_2

    :cond_f
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1
.end method

.method private pointerEvent_Soul_Change()V
    .locals 8

    const/16 v4, 0x18

    const/16 v7, 0xcc

    const/4 v6, 0x1

    const/16 v0, 0x4b

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    iget v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v1, 0xc

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v6}, Lcom/t4game/SoulPattern;->releaseChangeSoulItemHashtable(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Right_Soul_Main_Soul_Merge()V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x96

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v2, 0x5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Change(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v2, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_CHANGE_MSG(B)Z

    goto :goto_0

    :cond_4
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v2, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcom/t4game/SoulPattern;->releaseChangeSoulItemHashtable(Z)V

    goto :goto_0
.end method

.method private pointerEvent_Soul_Level_Details()V
    .locals 6

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v1, 0x96

    iget v2, p0, Lcom/t4game/SoulPattern;->w:I

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/16 v0, 0xcc

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0xa

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_LEVEL_DETAILS_MSG(B)Z

    :cond_0
    return-void
.end method

.method private pointerEvent_Soul_Main()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-gt v0, v3, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v2}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v1

    iput-boolean v4, v1, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_CHANGE_MSG(B)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/SoulPattern;->sendMsg_CALLED_ITEM_BAG_MSG()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UI_GoodsBox;->pointEvent(II)B

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v4, v3}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Right_Soul_Main_Soul_Merge()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pointerEvent_Soul_Merge()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x5

    const/4 v7, 0x1

    const/16 v4, 0x18

    const/4 v6, -0x1

    const/16 v0, 0x15

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/t4game/SoulPattern;->h:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-byte v9, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-ne v0, v7, :cond_3

    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    goto :goto_0

    :cond_3
    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v1, p0, Lcom/t4game/SoulPattern;->w:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v3, p0, Lcom/t4game/SoulPattern;->h:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Right_Soul_Main_Soul_Merge()V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    const/16 v2, 0xcc

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v9

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v1, v1, v0

    if-le v1, v6, :cond_a

    move v0, v7

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {p0, v9}, Lcom/t4game/SoulPattern;->sendMsg_FINE_SOUL_CHANGE_MSG(Z)Z

    :cond_9
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sget v1, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    const/16 v2, 0xcc

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v4, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v4, v4, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    move v1, v0

    :goto_3
    if-le v1, v6, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v1

    if-le v0, v6, :cond_b

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v3, v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aput-byte v6, v0, v1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_c
    move v0, v9

    goto :goto_2
.end method

.method private pressKeyEvent_Get_Details(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x7

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    :cond_0
    iput-byte v1, p0, Lcom/t4game/SoulPattern;->dialogId:B

    iput-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x4

    if-ne p1, v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-gez v0, :cond_1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    goto :goto_0
.end method

.method private pressKeyEvent_Get_Main(I)V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    if-ne v0, v2, :cond_0

    iput-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    if-ne p1, v0, :cond_3

    iput-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    goto :goto_0

    :cond_4
    const/4 v0, -0x6

    if-eq p1, v0, :cond_5

    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/t4game/SoulPattern;->sendMsg_CALL_SOUL_PATTERN_MSG(B)Z

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    if-ne v0, v2, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/SoulPattern;->sendMsg_CALL_SOUL_PATTERN_MSG(B)Z

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-le v0, v1, :cond_0

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iput-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0
.end method

.method private pressKeyEvent_Soul_Append(I)V
    .locals 7

    const/4 v1, -0x7

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_1

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_MSG(B)Z

    :goto_1
    iput-object v2, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z

    goto :goto_1

    :cond_3
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->command:B

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->dialogId:B

    goto :goto_0

    :cond_5
    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-ne v0, v5, :cond_6

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_8

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-ne v0, v5, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_9
    const/4 v0, -0x5

    if-eq p1, v0, :cond_a

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    :cond_a
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_b

    new-instance v0, Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto/16 :goto_0

    :cond_b
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-le v0, v5, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v1, v6

    aget-object v0, v0, v1

    aget-byte v0, v0, v5

    if-nez v0, :cond_c

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->command:B

    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v4

    :goto_2
    iget-object v2, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v2, v2, v4

    array-length v2, v2

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v2}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v2

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    aget-byte v2, v2, v4

    sub-int/2addr v2, v5

    if-le v1, v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/t4game/UI_Menu;

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto/16 :goto_0
.end method

.method private pressKeyEvent_Soul_Append_AlertNote_Repeat(I)V
    .locals 1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    goto :goto_0
.end method

.method private pressKeyEvent_Soul_Append_AlertNote_Save(I)V
    .locals 1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    goto :goto_0
.end method

.method private pressKeyEvent_Soul_Change(I)V
    .locals 10

    const/16 v5, 0x132

    const/16 v6, 0x63

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "\u5806\u53e0\u8fbe\u5230\u4e0a\u9650\uff0c\u8bf7\u8f6c\u5316\u540e\u518d\u7ee7\u7eed\u653e\u5165"

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->releaseChangeSoulItemHashtable(Z)V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x6

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_CHANGE_MSG(B)Z

    goto :goto_0

    :cond_2
    const/4 v0, -0x5

    if-ne p1, v0, :cond_11

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    if-lt v1, v8, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-nez v1, :cond_6

    move v2, v7

    :goto_1
    iget-object v1, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    aget v1, v1, v2

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    :cond_4
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->getTotalNumChangeSoulHashtable()I

    move-result v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    add-int/2addr v1, v3

    if-le v1, v6, :cond_7

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u5806\u53e0\u8fbe\u5230\u4e0a\u9650\uff0c\u8bf7\u8f6c\u5316\u540e\u518d\u7ee7\u7eed\u653e\u5165"

    invoke-virtual {v0, v9, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v2

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    if-eq v2, v1, :cond_3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    move v2, v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    sub-int/2addr v3, v8

    if-le v1, v3, :cond_a

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v3, v2

    aget-byte v2, v2, v7

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->setTargetSoulItem()V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/t4game/SoulItem;

    invoke-direct {v1}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setType(B)V

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v4, v2

    aget-byte v2, v2, v7

    sub-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0, v7}, Lcom/t4game/SoulItem;->setNum(I)V

    move v0, v3

    :goto_3
    move v1, v7

    move v3, v0

    :goto_4
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_22

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_22

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    if-ge v4, v8, :cond_c

    move v0, v3

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/t4game/SoulItem;

    invoke-direct {v1}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setType(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0, v7}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getId()B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_3

    :cond_c
    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v4

    if-eqz v4, :cond_e

    move v0, v3

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    if-eq v2, v4, :cond_e

    move v0, v3

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v7

    if-le v4, v5, :cond_f

    new-instance v1, Lcom/t4game/SoulItem;

    invoke-direct {v1}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setType(B)V

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v4, v2

    aget-byte v2, v2, v7

    sub-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->setTargetSoulItem()V

    goto/16 :goto_0

    :cond_f
    new-instance v4, Lcom/t4game/SoulItem;

    invoke-direct {v4}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/SoulItem;->setType(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0, v7}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/t4game/SoulItem;->getId()B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v0, v0, v2

    aget-byte v0, v0, v7

    if-lt v3, v0, :cond_22

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->setTargetSoulItem()V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, v8}, Lcom/t4game/SoulPattern;->releaseChangeSoulItemHashtable(Z)V

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    if-lt v1, v8, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-nez v1, :cond_14

    move v2, v7

    :goto_6
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ge v1, v8, :cond_15

    :cond_12
    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    :cond_13
    new-instance v1, Lcom/t4game/SoulItem;

    invoke-direct {v1}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setType(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    mul-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v5, v2

    aget-byte v2, v2, v7

    mul-int/2addr v2, v3

    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->setTargetSoulItem()V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    move v2, v1

    goto/16 :goto_6

    :cond_15
    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->getTotalNumChangeSoulHashtable()I

    move-result v3

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v1, v1, v2

    aget-byte v1, v1, v7

    add-int/2addr v1, v3

    if-ge v1, v6, :cond_17

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    sub-int v5, v6, v3

    if-le v4, v5, :cond_16

    sub-int v3, v6, v3

    :goto_8
    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    mul-int/2addr v4, v3

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v4, v2

    aget-byte v2, v2, v7

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    goto :goto_8

    :cond_17
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u5806\u53e0\u8fbe\u5230\u4e0a\u9650\uff0c\u8bf7\u8f6c\u5316\u540e\u518d\u7ee7\u7eed\u653e\u5165"

    invoke-virtual {v0, v9, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_7

    :cond_18
    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-nez v1, :cond_0

    :cond_19
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->getTotalNumChangeSoulHashtable()I

    move-result v1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v7

    add-int/2addr v3, v1

    if-ge v3, v6, :cond_1c

    new-instance v3, Lcom/t4game/SoulItem;

    invoke-direct {v3}, Lcom/t4game/SoulItem;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/t4game/SoulItem;->setId(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/t4game/SoulItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/t4game/SoulItem;->setQuality(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/t4game/SoulItem;->setType(B)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    sub-int v5, v6, v1

    if-le v4, v5, :cond_1b

    sub-int v1, v6, v1

    :goto_9
    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    div-int/2addr v1, v4

    iget-object v4, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v7

    mul-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/t4game/SoulItem;->setNum(I)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v5, v2

    aget-byte v2, v2, v7

    mul-int/2addr v1, v2

    sub-int v1, v4, v1

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/t4game/SoulItem;->getId()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1a
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    if-eq v3, v1, :cond_19

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u5806\u53e0\u8fbe\u5230\u4e0a\u9650\uff0c\u8bf7\u8f6c\u5316\u540e\u518d\u7ee7\u7eed\u653e\u5165"

    invoke-virtual {v0, v9, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_1d
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1e

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v8, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    goto/16 :goto_0

    :cond_1e
    const/4 v0, -0x4

    if-ne p1, v0, :cond_20

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_1f

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_1f
    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_20
    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_21
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_22
    move v0, v3

    goto/16 :goto_5
.end method

.method private pressKeyEvent_Soul_Level_Details(I)V
    .locals 2

    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Super;->keyEvent(I)V

    goto :goto_0
.end method

.method private pressKeyEvent_Soul_Main(I)V
    .locals 7

    const/4 v1, -0x7

    const/4 v6, 0x3

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    if-gt v0, v2, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v1

    iput-boolean v5, v1, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_CHANGE_MSG(B)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/SoulPattern;->sendMsg_CALLED_ITEM_BAG_MSG()Z

    goto :goto_1

    :cond_3
    const/16 v0, 0x30

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_LEVEL_DETAILS_MSG(B)Z

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->release()V

    goto :goto_0

    :cond_5
    const/4 v0, -0x5

    if-eq p1, v0, :cond_6

    const/4 v0, -0x6

    if-ne p1, v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5, v2}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v0

    if-eq v0, v5, :cond_8

    new-instance v0, Lcom/t4game/UI_Menu;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u9644\u7075"

    aput-object v2, v1, v4

    const-string v2, "\u8fdb\u9636"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "\u8f6c\u5316"

    aput-object v3, v1, v2

    const-string v2, "\u6574\u7406"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    new-array v0, v5, [B

    aput-byte v5, v0, v4

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1, v0}, Lcom/t4game/UI_Menu;->setDisableItemIndex([B)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/t4game/UI_Menu;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u91cd\u94f8"

    aput-object v2, v1, v4

    const-string v2, "\u8fdb\u9636"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "\u8f6c\u5316"

    aput-object v3, v1, v2

    const-string v2, "\u6574\u7406"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4game/UI_GoodsBox;->keyEvent(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x3

    if-ne p1, v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iput-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iput-boolean v5, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    goto/16 :goto_0

    :cond_b
    const/4 v0, -0x4

    if-ne p1, v0, :cond_c

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v5

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_c
    if-ne p1, v2, :cond_d

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v5

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pressKeyEvent_Soul_Merge(I)V
    .locals 9

    const/4 v4, 0x2

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_4

    :goto_0
    if-le v1, v6, :cond_3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v1

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v3, v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aput-byte v6, v0, v1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iput-byte v4, p0, Lcom/t4game/SoulPattern;->dialogId:B

    goto :goto_1

    :cond_4
    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    move v0, v7

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v1, v1, v0

    if-le v1, v6, :cond_5

    move v0, v8

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/t4game/SoulPattern;->sendMsg_FINE_SOUL_CHANGE_MSG(Z)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, -0x5

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_b

    move v2, v7

    :goto_4
    const/4 v0, 0x4

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v1, v1, v2

    if-gez v1, :cond_9

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-ne v1, v8, :cond_9

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v1, v1, v7

    if-le v1, v6, :cond_7

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v4, v4, v7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v5, v5, v7

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    if-ne v3, v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    aput-byte v3, v1, v2

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    :cond_8
    iput-short v6, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :cond_b
    if-le v1, v6, :cond_c

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v1

    if-le v0, v6, :cond_a

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v3, v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aput-byte v6, v0, v1

    goto/16 :goto_1

    :cond_c
    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-short v6, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x30

    if-ne p1, v0, :cond_11

    :goto_5
    if-le v1, v6, :cond_10

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v1

    if-le v0, v6, :cond_e

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v3, v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-nez v0, :cond_f

    :cond_e
    :goto_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/t4game/SoulItem;->setNum(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aput-byte v6, v0, v1

    goto :goto_6

    :cond_10
    invoke-virtual {p0, v8}, Lcom/t4game/SoulPattern;->sendMsg_FINE_SOUL_CHANGE_MSG(Z)Z

    goto/16 :goto_1

    :cond_11
    const/4 v0, -0x3

    if-ne p1, v0, :cond_13

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_12

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-boolean v8, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    goto/16 :goto_1

    :cond_12
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-gez v0, :cond_0

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    goto/16 :goto_1

    :cond_13
    const/4 v0, -0x4

    if-ne p1, v0, :cond_16

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-nez v0, :cond_14

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_14
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-ne v0, v1, :cond_15

    iput-boolean v7, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    iput-byte v6, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_15
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    goto/16 :goto_1

    :cond_16
    if-ne p1, v6, :cond_18

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_17

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-gez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    goto/16 :goto_1

    :cond_17
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_18
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    if-eqz v0, :cond_19

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_1:B

    goto/16 :goto_1

    :cond_19
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->num:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_1

    :cond_1a
    move v0, v7

    goto/16 :goto_3
.end method

.method private processMsg_CALLED_ITEM_BAG_MSG()V
    .locals 8

    const/16 v3, 0x9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->boxsNum:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    :goto_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    array-length v1, v1

    if-eq v1, v3, :cond_1

    :cond_0
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    :cond_1
    move v1, v7

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v2, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    aput v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_5

    new-instance v2, Lcom/t4game/SoulItem;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-direct {v2, v3}, Lcom/t4game/SoulItem;-><init>(Lcom/t4game/IoBuffer;)V

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    aget v4, v3, v7

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v7

    :goto_3
    iget-object v3, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getId()B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/t4game/SoulPattern;->totalNum:[I

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget v5, v3, v4

    invoke-virtual {v2}, Lcom/t4game/SoulItem;->getNum()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_3

    :cond_5
    invoke-direct {p0, v7}, Lcom/t4game/SoulPattern;->releaseChangeSoulItemHashtable(Z)V

    return-void
.end method

.method private processMsg_CALL_SOUL_PATTERN_MSG()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x296

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    :cond_2
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/t4game/SoulPattern;->resultSoulItemVector:Ljava/util/Vector;

    new-instance v4, Lcom/t4game/SoulItem;

    iget-object v5, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-direct {v4, v5}, Lcom/t4game/SoulItem;-><init>(Lcom/t4game/IoBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    array-length v1, v1

    if-eq v1, v6, :cond_5

    :cond_4
    new-array v1, v6, [B

    iput-object v1, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    :cond_5
    move v1, v7

    :goto_1
    if-ge v1, v6, :cond_6

    iget-object v2, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :cond_7
    move v0, v7

    :goto_2
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private processMsg_FINE_SOUL_CHANGE_MSG()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processMsg_Get_Main()V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    array-length v0, v0

    if-eq v0, v5, :cond_3

    :cond_2
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    :cond_3
    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_4

    iget-object v1, p0, Lcom/t4game/SoulPattern;->isOpen:[B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_6

    :cond_5
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_8

    :cond_7
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    :cond_8
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_9

    iget-object v2, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x2c

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    invoke-virtual {p0, v4}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    return-void
.end method

.method private processMsg_SOUL_LEVEL_DETAILS_MSG()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    array-length v1, v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->isOpenEffect:B

    return-void

    :cond_5
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processMsg_SOUL_PATTERN_PASTE_MSG()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x299

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SoulRoleGood_AddAttribute()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->levelOutFit:B

    goto :goto_0
.end method

.method private processMsg_SOUL_PATTERN_PASTE_VIEW_MSG()V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x0

    const/16 v3, -0x2c

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v5, [Lcom/t4game/RoleOutfit;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    move v0, v4

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    new-instance v2, Lcom/t4game/RoleOutfit;

    invoke-direct {v2}, Lcom/t4game/RoleOutfit;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iput v2, v1, Lcom/t4game/RoleOutfit;->id:I

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/t4game/RoleOutfit;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/t4game/RoleOutfit;->color:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v2

    iput-short v2, v1, Lcom/t4game/RoleOutfit;->grade:S

    iget-object v1, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v2

    iput-short v2, v1, Lcom/t4game/RoleOutfit;->iconId:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->levelOutFit:B

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x23

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Main()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3}, Lcom/t4game/GameScreen;->setDialog(B)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SoulRoleGood_AddAttribute()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x24

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-direct {p0}, Lcom/t4game/SoulPattern;->init_Soul_Append()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    goto/16 :goto_0
.end method

.method private processMsg_SOUL_PATTERN_RECAST_MSG()V
    .locals 8

    const v7, 0xffffff

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "\n"

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\u5f53\u524d\u5c5e\u6027\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    aput v7, v1, v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    sget-object v2, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aget v2, v2, v3

    aput v2, v1, v6

    const-string v1, "\u91cd\u94f8\u540e\u5c5e\u6027\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    const/4 v2, 0x2

    aput v7, v1, v2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->baoliuColor:[I

    const/4 v2, 0x3

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v4, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/t4game/GameWorld;->functionAddAlertScrossMessage(BLjava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SoulRoleGood_AddAttribute()V

    iput-byte v5, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    goto :goto_0
.end method

.method private processMsg_SoulRoleGood_AddAttribute()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v2, v2, v1

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/t4game/RoleOutfit;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/RoleOutfit;->color:B

    iget-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/t4game/RoleOutfit;->grade:S

    iget-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/t4game/RoleOutfit;->iconId:S

    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v2, v4}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v3, v0

    aput-object v0, v2, v1

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    if-nez v0, :cond_7

    new-instance v0, Lcom/t4game/SoulRoleGood;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-direct {v0, v1}, Lcom/t4game/SoulRoleGood;-><init>(Lcom/t4game/IoBuffer;)V

    iput-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    :goto_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v1, v1, v4

    array-length v1, v1

    if-eq v1, v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    aput-object v2, v1, v4

    :cond_3
    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    array-length v1, v1

    if-eq v1, v0, :cond_5

    :cond_4
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    :cond_5
    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1}, Lcom/t4game/SoulRoleGood;->read(Lcom/t4game/IoBuffer;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v1, v1, v5

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v1, v1, v5

    array-length v1, v1

    if-eq v1, v0, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    aput-object v2, v1, v5

    :cond_a
    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_b

    iget-object v2, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method private processMsg_Soul_Pattern_Change()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    array-length v0, v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    :cond_1
    move v0, v5

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/t4game/SoulPattern;->changeDialogIdTo(B)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private release()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/SoulPattern;->selectImage:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->images:[Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->position_Y:[I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->position_X:[I

    iput-object v2, p0, Lcom/t4game/SoulPattern;->attributrsStrings:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->describeStrings:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->nameSpiritDemonByQuality:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->iconImage:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1}, Lcom/t4game/GameUi;->release()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iput-object v2, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_0
    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menu:Lcom/t4game/UI_Menu;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->outFitOn:[Lcom/t4game/RoleOutfit;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    iput-object v2, p0, Lcom/t4game/SoulPattern;->menuStringCanUse:[B

    iput-object v2, p0, Lcom/t4game/SoulPattern;->colorOutFitDetails:[I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/SoulPattern;->menuStrings:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1}, Lcom/t4game/GameUi;->release()V

    iput-object v2, p0, Lcom/t4game/SoulPattern;->ui:Lcom/t4game/GameUi;

    :cond_1
    return-void
.end method

.method private releaseChangeSoulItemHashtable(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/t4game/SoulItem;->setNum(I)V

    :cond_1
    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "if(changeSoulItemHashtable.size() > 0){ \u6210\u7acb\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iput-object v5, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    :cond_4
    iput-object v5, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/SoulPattern;->isLeftFocus_Merge:Z

    return-void
.end method

.method private setTargetSoulItem()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    move v2, v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    if-nez v1, :cond_2

    new-instance v1, Lcom/t4game/SoulItem;

    invoke-direct {v1}, Lcom/t4game/SoulItem;-><init>()V

    iput-object v1, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    :cond_2
    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0, v6}, Lcom/t4game/SoulItem;->setType(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v0, v5}, Lcom/t4game/SoulItem;->setQuality(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v0, v0, v5

    aget-byte v0, v0, v5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v1, v1, v5

    aget-byte v1, v1, v6

    div-int/2addr v0, v1

    if-le v0, v6, :cond_3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v1, v1, v5

    aget-byte v1, v1, v5

    div-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    aget-object v1, v1, v5

    aget-byte v1, v1, v6

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/SoulItem;->setNum(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    invoke-virtual {v1, v5}, Lcom/t4game/SoulItem;->setType(B)V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    aget-byte v1, v1, v5

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aget-byte v3, v3, v6

    div-int/2addr v1, v3

    if-le v1, v6, :cond_5

    iget-object v1, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    aget-byte v0, v0, v5

    div-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/t4game/SoulItem;->setNum(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/t4game/SoulPattern;->targetItem:Lcom/t4game/SoulItem;

    iget-object v3, p0, Lcom/t4game/SoulPattern;->changeRate:[[B

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    aget-byte v0, v0, v6

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/t4game/SoulItem;->setNum(I)V

    goto :goto_1
.end method


# virtual methods
.method public changeDialogIdTo(B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->init(B)V

    iput-byte p1, p0, Lcom/t4game/SoulPattern;->dialogId:B

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Get_Main(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Get_Details(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Main(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Level_Details(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Append(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Merge(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Append(Ljavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Append_AlertNote_Save(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Append(Ljavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Append_AlertNote_Repeat(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->draw_Soul_Change(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public draw_Soul_Append_ChaKan(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v1, "\u88c5\u5907\u9644\u7075\u91cd\u94f8"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v7

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-object v3, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v4

    aget-object v4, v3, v4

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintGoodsIconWithRoleGoodGrade(IILjavax/microedition/lcdui/Graphics;Lcom/t4game/RoleGoods;[I)V

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget-object v0, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    div-int v8, v0, v1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_0
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    add-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->endIndex:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_3

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-nez v0, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7075\u7eb9\u9644\u7075\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v7}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v2

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/t4game/RoleGoods;->grade:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getExp_now()I

    move-result v1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getExp_all()I

    move-result v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget v4, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v5, 0x5a

    sget v6, Lcom/t4game/Defaults;->sfh:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_4
    const-string v0, "\u5f53\u524d\u5c5e\u6027(\u9644\u7075\u4e00\u6b21\u5c5e\u6027)"

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_5
    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v2, 0x2

    if-le v1, v2, :cond_f

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    if-ge v7, v0, :cond_6

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    if-le v0, v1, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v7, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_7
    :goto_1
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v1, v7, 0x2

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v3, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v4, 0x168

    sget v5, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v6, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v6}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v6

    aget-object v6, v6, v7

    const/4 v9, 0x0

    aget-byte v6, v6, v9

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    iget-object v6, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v6}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v6

    aget-object v6, v6, v7

    const/4 v9, 0x0

    aget-byte v6, v6, v9

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_f
    move v7, v0

    goto/16 :goto_0
.end method

.method public draw_Soul_Main_ChaKan(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v0, p1, v2, v1}, Lcom/t4game/UI_GoodsBox;->drawWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;S[I)V

    iget-short v1, v0, Lcom/t4game/UI_GoodsBox;->x:S

    iget-short v2, v0, Lcom/t4game/UI_GoodsBox;->w:S

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit16 v2, v1, 0x96

    iget-short v1, v0, Lcom/t4game/UI_GoodsBox;->y:S

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->h:S

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    add-int v3, v1, v0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    invoke-virtual {v0, p1, v1}, Lcom/t4game/GameUi;->drawBubbleWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;[I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v0, v0, 0xc8

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7075\u7eb9\u5957\u88c5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->levelOutFit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/SoulPattern;->leftX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public getContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/SoulPattern;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public pointerEvent()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Get_Mian()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Get_Details()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Soul_Main()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Soul_Level_Details()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Soul_Append()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Soul_Merge()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->pointerEvent_Soul_Change()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public pointerEvent_Soul_Append_ChaKan()V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/16 v4, 0x168

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v0, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/t4game/SoulPattern;->w:I

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    div-int v6, v0, v1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_0
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    add-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v1, v9

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-nez v0, :cond_3

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-eqz v0, :cond_2

    iput-byte v7, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-ge v0, v8, :cond_4

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-eq v0, v9, :cond_2

    iput-byte v9, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    if-le v0, v8, :cond_5

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->startIndex:B

    sub-int/2addr v0, v8

    move v7, v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_6

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v6

    add-int/2addr v1, v2

    if-le v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    sub-int/2addr v0, v9

    if-lt v7, v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v1, v7, 0x2

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v7, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_9
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->endIndex:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoulPattern;->topY:I

    iget v0, p0, Lcom/t4game/SoulPattern;->leftX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/SoulPattern;->topY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto/16 :goto_0
.end method

.method public pointerEvent_Soul_Main_ChaKan(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UI_GoodsBox;->pointEvent(II)B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z

    :cond_0
    return-void
.end method

.method public pressKeyEvent(I)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Get_Main(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Get_Details(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Main(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Level_Details(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Merge(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append_AlertNote_Save(I)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Append_AlertNote_Repeat(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/t4game/SoulPattern;->pressKeyEvent_Soul_Change(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public pressKeyEvent_Soul_Append_ChaKan(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v0}, Lcom/t4game/SoulRoleGood;->getAttributeStrings()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    goto :goto_0
.end method

.method public pressKeyEvent_Soul_Main_ChaKan(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4game/UI_GoodsBox;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iput-boolean v2, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    goto :goto_0
.end method

.method public processMsg(I)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_Get_Main()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_CALL_SOUL_PATTERN_MSG()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_FINE_SOUL_CHANGE_MSG()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SOUL_PATTERN_PASTE_VIEW_MSG()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SOUL_PATTERN_PASTE_MSG()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_CALLED_ITEM_BAG_MSG()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SOUL_LEVEL_DETAILS_MSG()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_SOUL_PATTERN_RECAST_MSG()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/t4game/SoulPattern;->processMsg_Soul_Pattern_Change()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x295
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public sendMsg_CALLED_ITEM_BAG_MSG()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x29b

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_CALL_SOUL_PATTERN_MSG(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_3:B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x296

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMsg_FINE_SOUL_CHANGE_MSG(Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getType()B

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/Integer;

    iget-byte v4, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/lang/Integer;

    iget-byte v3, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v4, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/SoulItem;

    invoke-virtual {v1}, Lcom/t4game/SoulItem;->getQuality()B

    move-result v1

    invoke-virtual {v4, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v1, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    move v0, v5

    :goto_1
    return v0

    :cond_2
    move v3, v5

    :goto_2
    const/4 v0, 0x4

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v0, v0, v3

    if-gez v0, :cond_3

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v4, v4, v3

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v4, v4, v3

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v5, v5, v3

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v4, v4, v3

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/t4game/SoulPattern;->mergeItems:[B

    aget-byte v4, v4, v3

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/SoulPattern;->mergeResultQuality:S

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x297

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    goto :goto_1
.end method

.method public sendMsg_Get_Main()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x295

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_SOUL_LEVEL_DETAILS_MSG(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x29c

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_SOUL_PATTERN_CHANGE_MSG(B)Z
    .locals 4

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->changeSoulItemHashtable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/SoulItem;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getId()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/SoulItem;->getNum()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x29d

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_SOUL_PATTERN_PASTE_MSG(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->command:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x299

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-object v0, v2, v0

    check-cast v0, Lcom/t4game/RoleOutfit;

    iget v0, v0, Lcom/t4game/RoleOutfit;->id:I

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x298

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_SOUL_PATTERN_RECAST_MSG(B)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/SoulPattern;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/SoulPattern;->soulRoleGood:Lcom/t4game/SoulRoleGood;

    invoke-virtual {v1}, Lcom/t4game/SoulRoleGood;->getAttributeQualitys()[[B

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    aget-byte v1, v1, v3

    iget-byte v2, p0, Lcom/t4game/SoulPattern;->command:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/SoulPattern;->index_select_2:B

    sub-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/SoulPattern;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x29a

    iget-object v2, p0, Lcom/t4game/SoulPattern;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method
