.class public Lcom/t4game/Gamble;
.super Ljava/lang/Object;


# static fields
.field private static final FAIL:B = 0x2t

.field private static final GAMBLE_AUTO_GUESS:B = 0x2t

.field private static final GAMBLE_FIX_GUESS:B = 0x3t

.field private static final GAMBLE_HAND_GUESS:B = 0x1t

.field public static final GAMBLE_VIEW:B = 0x0t

.field private static final MIBAO_TYPE_DRUG:B = 0x1t

.field private static final MIBAO_TYPE_EXP:B = 0x0t

.field private static final MIBAO_TYPE_SALARY:B = 0x2t

.field private static final MIBAO_TYPE_SUNDRIES:B = 0x4t

.field private static final MIBAO_TYPE_YUANBAO:B = 0x3t

.field private static final PAPER:B = 0x2t

.field private static final Rock:B = 0x1t

.field private static final SCISSORS:B = 0x0t

.field private static final STATE_ALERT:B = 0x2t

.field private static final TIE:B = 0x1t

.field private static final WIN:B

.field private static mibaoNames:[Ljava/lang/String;


# instance fields
.field private final DIALOGFONT_COLOR:I

.field private final Font_COLOR:I

.field final MAP_MIBAO:[B

.field private final MAX_MIBAO:I

.field private final RECT_COLOR:I

.field private STATE_CONFIRM:B

.field private STATE_NORMAL:B

.field private actionType:B

.field private count:I

.field private defultFistImag:[Ljavax/microedition/lcdui/Image;

.field private finger:B

.field private final fistResults:[B

.field private fistValue:S

.field private freeGambleTimes:S

.field private gambleState:B

.field private gameWorld:Lcom/t4game/GameWorld;

.field private hisFailTimes:I

.field private hisTieTimes:I

.field private hisWinTimes:I

.field public imgMibao:[Ljavax/microedition/lcdui/Image;

.field private imgeFist:[Ljavax/microedition/lcdui/Image;

.field private isMibaoSpark:Z

.field private isSpark:Z

.field private last:I

.field private locked:Z

.field private lockedMiBao:Z

.field private menu:Lcom/t4game/UI_Menu;

.field private mibaoDetail:[Ljava/lang/String;

.field private mibaoIconId:S

.field private mibaoIndex:B

.field private mibaoSize:B

.field private network:Lcom/t4game/TcpNetwork;

.field private now:I

.field private pickMibaoTimes:S

.field private result:[B

.field private resultIcon:Ljava/lang/String;

.field private resultId:[B

.field private resultIdFixGuess:[B

.field private resultImage:[Ljavax/microedition/lcdui/Image;

.field private resultMibaoType:B

.field private resultPickMibao:Ljava/lang/String;

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private sfh:I

.field private state:B

.field public stop:Z

.field private tick:Z

.field private ui:Lcom/t4game/GameUi;

.field private viewStateOfDialog:I

.field private winTimes:S


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    const v0, 0x7a654a

    iput v0, p0, Lcom/t4game/Gamble;->RECT_COLOR:I

    const v0, 0xffc700

    iput v0, p0, Lcom/t4game/Gamble;->DIALOGFONT_COLOR:I

    const v0, 0xffffff

    iput v0, p0, Lcom/t4game/Gamble;->Font_COLOR:I

    iput v2, p0, Lcom/t4game/Gamble;->count:I

    iput-boolean v1, p0, Lcom/t4game/Gamble;->stop:Z

    iput-boolean v1, p0, Lcom/t4game/Gamble;->tick:Z

    iput v3, p0, Lcom/t4game/Gamble;->last:I

    iput-boolean v1, p0, Lcom/t4game/Gamble;->locked:Z

    iput-byte v1, p0, Lcom/t4game/Gamble;->STATE_NORMAL:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/Gamble;->STATE_CONFIRM:B

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/t4game/Gamble;->MAP_MIBAO:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/t4game/Gamble;->fistResults:[B

    iput v3, p0, Lcom/t4game/Gamble;->MAX_MIBAO:I

    iput-byte v2, p0, Lcom/t4game/Gamble;->resultMibaoType:B

    iput-boolean v1, p0, Lcom/t4game/Gamble;->isMibaoSpark:Z

    iput-byte v2, p0, Lcom/t4game/Gamble;->actionType:B

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iput v0, p0, Lcom/t4game/Gamble;->sfh:I

    iput-boolean v1, p0, Lcom/t4game/Gamble;->isSpark:Z

    iput-byte v1, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    iput-object p1, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iput-object v0, p0, Lcom/t4game/Gamble;->network:Lcom/t4game/TcpNetwork;

    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    iget-byte v0, p1, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iput v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    iget-object v0, p1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iput-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method private drawAniResultImage(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 14

    iget-boolean v5, p0, Lcom/t4game/Gamble;->isSpark:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/t4game/Gamble;->resultId:[B

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/t4game/Gamble;->result:[B

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/t4game/Gamble;->locked:Z

    if-nez v5, :cond_0

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    iput v5, p0, Lcom/t4game/Gamble;->now:I

    :cond_0
    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    iget v6, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/t4game/Gamble;->last:I

    if-ge v5, v6, :cond_2

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x3

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v6, v6, v5

    move-object v0, p1

    move-object v1, v6

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v6, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x2

    sub-int v5, v7, v5

    aget-object v6, v6, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/t4game/Gamble;->locked:Z

    :goto_0
    return-void

    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/t4game/Gamble;->isSpark:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/t4game/Gamble;->locked:Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/t4game/Gamble;->resultId:[B

    const/4 v6, 0x0

    aget-byte v11, v5, v6

    iget-object v5, p0, Lcom/t4game/Gamble;->resultId:[B

    const/4 v6, 0x1

    aget-byte v12, v5, v6

    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lcom/t4game/Gamble;->drawResultImag(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    iget-object v5, p0, Lcom/t4game/Gamble;->result:[B

    const/4 v6, 0x0

    aget-byte v7, v5, v6

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/t4game/Gamble;->drawResultFontImage(Ljavax/microedition/lcdui/Graphics;BIII)V

    iget-object v5, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    iget-object v6, p0, Lcom/t4game/Gamble;->resultId:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    iget-object v7, p0, Lcom/t4game/Gamble;->resultId:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/t4game/Gamble;->setDefultFistImag(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    goto :goto_0
.end method

.method private drawDefaultFistImage(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0, p2, p3, p6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v0, v4

    move-object v0, p1

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    :cond_0
    return-void
.end method

.method private drawFistImage(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 7

    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->result:[B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/t4game/Gamble;->drawDefaultFistImage(Ljavax/microedition/lcdui/Graphics;IIIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct/range {p0 .. p8}, Lcom/t4game/Gamble;->drawGambleFixGuess(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p8}, Lcom/t4game/Gamble;->drawAniResultImage(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    goto :goto_0
.end method

.method private drawGambleFixGuess(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 9

    iget-boolean v0, p0, Lcom/t4game/Gamble;->isSpark:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/t4game/Gamble;->last:I

    mul-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Lcom/t4game/Gamble;->locked:Z

    if-nez v1, :cond_0

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    iput v1, p0, Lcom/t4game/Gamble;->now:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/t4game/Gamble;->locked:Z

    :cond_0
    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    iget v2, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    if-ltz v1, :cond_4

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    iget v2, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    iget v2, p0, Lcom/t4game/Gamble;->last:I

    if-gt v1, v2, :cond_4

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v6, v0, 0x3

    const/4 v0, 0x2

    sub-int v7, v0, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/t4game/Gamble;->drawResultImag(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Gamble;->tick:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/t4game/Gamble;->tick:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/t4game/Gamble;->count:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v1, v1, 0x2

    aget-byte v6, v0, v1

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/t4game/Gamble;->drawResultImag(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    iget-object v0, p0, Lcom/t4game/Gamble;->result:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    aget-byte v2, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/t4game/Gamble;->drawResultFontImage(Ljavax/microedition/lcdui/Graphics;BIII)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v1, p0, Lcom/t4game/Gamble;->last:I

    sget v2, Lcom/t4game/GameWorld;->tickCounter:I

    iget v3, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v2, v3

    rem-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    iget v2, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/t4game/Gamble;->tick:Z

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    iget v2, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v1, v2

    div-int v0, v1, v0

    iput v0, p0, Lcom/t4game/Gamble;->count:I

    iget v0, p0, Lcom/t4game/Gamble;->count:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Gamble;->isSpark:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Gamble;->tick:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Gamble;->locked:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/Gamble;->count:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v1, v1, 0x2

    aget-byte v6, v0, v1

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/t4game/Gamble;->drawResultImag(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    iget-object v0, p0, Lcom/t4game/Gamble;->result:[B

    iget v1, p0, Lcom/t4game/Gamble;->count:I

    aget-byte v2, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/t4game/Gamble;->drawResultFontImage(Ljavax/microedition/lcdui/Graphics;BIII)V

    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v2, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget v3, p0, Lcom/t4game/Gamble;->count:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gamble;->setDefultFistImag(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    goto :goto_1
.end method

.method private drawMiBao(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 24

    const-string v5, "\u795e\u7075\u79d8\u5b9d"

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v9, -0x1

    const v10, 0xffc700

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Gamble;->sfh:I

    move v5, v0

    add-int v5, v5, p3

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v6, 0x168

    sub-int/2addr v5, v6

    shr-int/lit8 v18, v5, 0x1

    const/16 v5, 0x48

    sub-int/2addr v5, v8

    int-to-double v5, v5

    const-wide v10, 0x3ff3333333333333L    # 1.2

    div-double/2addr v5, v10

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v19, v0

    add-int v20, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Gamble;->sfh:I

    move v5, v0

    div-int/lit8 v21, v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/t4game/Gamble;->setAniMibao()V

    :cond_0
    add-int v5, v7, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Gamble;->sfh:I

    move v6, v0

    div-int/lit8 v6, v6, 0x5

    add-int v22, v5, v6

    const/4 v5, 0x0

    move/from16 v23, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_2

    const v5, 0xffffff

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Gamble;->mibaoIndex:B

    move v5, v0

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    aget-object v5, v5, v23

    add-int v6, v19, v18

    mul-int v10, v20, v23

    add-int/2addr v6, v10

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int v5, v19, v18

    mul-int v6, v20, v23

    add-int/2addr v6, v5

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/Gamble;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    add-int v5, v19, v18

    mul-int v6, v20, v23

    add-int/2addr v5, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    sget-object v5, Lcom/t4game/Gamble;->mibaoNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->MAP_MIBAO:[B

    move-object v6, v0

    aget-byte v6, v6, v23

    aget-object v10, v5, v6

    add-int v5, v19, v18

    mul-int v6, v20, v23

    add-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int v11, v5, v6

    sget v13, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v14, 0xffffff

    const/4 v15, -0x1

    move/from16 v12, v22

    move-object/from16 v16, p1

    invoke-static/range {v10 .. v16}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v5, v23, 0x1

    move/from16 v23, v5

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    aget-object v10, v5, v23

    add-int v5, v19, v18

    mul-int v6, v20, v23

    add-int v12, v5, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move v13, v7

    move/from16 v16, v8

    move/from16 v17, v8

    invoke-static/range {v10 .. v17}, Lcom/t4game/DraftingUtil;->imageEffectBlackWhite(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Gamble;->sfh:I

    move v5, v0

    add-int v7, v22, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u79d8\u5b9d\u53ef\u62fe\u53d6\u6b21\u6570:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/Gamble;->pickMibaoTimes:S

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int v6, v21, v18

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v9, 0xffffff

    const/4 v10, -0x1

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method private drawResultFontImage(Ljavax/microedition/lcdui/Graphics;BIII)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/Gamble;->fistResults:[B

    aget-byte v1, v1, p2

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, p3, p4, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method

.method private drawResultImag(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 6

    iget-object v0, p0, Lcom/t4game/Gamble;->resultId:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p6

    invoke-virtual {p1, v0, p2, p3, p8}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v0, p7

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    :cond_1
    return-void
.end method

.method private fistFunctionMenu(B)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iput v1, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/t4game/Gamble;->setFinger(B)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/t4game/Gamble;->setActionType(B)V

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    invoke-virtual {p0, v1, v2}, Lcom/t4game/Gamble;->sendGambleMessage(BB)Z

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/t4game/Gamble;->setFinger(B)V

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/t4game/Gamble;->setFinger(B)V

    goto :goto_1
.end method

.method private initMibaoDetail()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    :cond_0
    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/commList1.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    iget-object v1, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    iget-object v1, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0xb4

    sub-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, v1, Lcom/t4game/GameUi;->x:S

    const/16 v1, 0x159

    iput-short v1, v0, Lcom/t4game/UI_List;->w:S

    iget-object v1, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v1, v1, 0x6

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->x:S

    iget-object v1, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->y:S

    add-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->y:S

    const/16 v1, 0xc8

    iput-short v1, v0, Lcom/t4game/UI_List;->h:S

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/t4game/GameUi;->commandType:B

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    iput v1, v0, Lcom/t4game/GameUi;->lose_focus:I

    return-void
.end method

.method private pressedOfFuntionShenQuanDao(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_4
    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    iget-object v1, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    goto :goto_0
.end method

.method private setAniMibao()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/t4game/Gamble;->isMibaoSpark:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/t4game/Gamble;->lockedMiBao:Z

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    iput v0, p0, Lcom/t4game/Gamble;->now:I

    :cond_0
    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    iget v1, p0, Lcom/t4game/Gamble;->now:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/Gamble;->last:I

    mul-int/lit8 v1, v1, 0x4

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/Gamble;->last:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_2

    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x5

    :goto_0
    iget v2, p0, Lcom/t4game/Gamble;->last:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v4

    if-lt v0, v2, :cond_3

    iput-boolean v3, p0, Lcom/t4game/Gamble;->isMibaoSpark:Z

    iput-boolean v3, p0, Lcom/t4game/Gamble;->lockedMiBao:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    div-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_3
    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    iput-boolean v4, p0, Lcom/t4game/Gamble;->lockedMiBao:Z

    goto :goto_1

    :cond_4
    iget-byte v0, p0, Lcom/t4game/Gamble;->resultMibaoType:B

    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    goto :goto_1
.end method

.method private shenQuanDaoMenuFunction(B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u526a\u5200"

    aput-object v1, v0, v2

    const-string v1, "\u77f3\u5934"

    aput-object v1, v0, v4

    const-string v1, "\u5e03"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    :cond_2
    new-instance v1, Lcom/t4game/UI_Menu;

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    iput v3, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/t4game/Gamble;->setActionType(B)V

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    invoke-virtual {p0, v3, v2}, Lcom/t4game/Gamble;->sendGambleMessage(BB)Z

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/t4game/Gamble;->setActionType(B)V

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    invoke-virtual {p0, v1, v2}, Lcom/t4game/Gamble;->sendGambleMessage(BB)Z

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    invoke-virtual {p0, v2}, Lcom/t4game/Gamble;->sendGamblePickMibaoMessage(B)Z

    goto :goto_0
.end method

.method private splitResultIcon(Ljava/lang/String;B)[B
    .locals 4

    new-array v0, p2, [Ljava/lang/String;

    new-array v0, p2, [B

    const-string v1, "|"

    invoke-static {p1, v1}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearGambleFixTimes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    return-void
.end method

.method public drawMibaoDetail(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const v5, 0xffffff

    const-string v0, "\u79d8\u5b9d\u8be6\u60c5"

    iget-object v1, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    invoke-static {v0, p1, v1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameUi;)V

    invoke-virtual {p1, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x168

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x5

    iget-object v0, p0, Lcom/t4game/Gamble;->mibaoDetail:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v2, v2, 0x5

    const/16 v3, 0x163

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v6, v5

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawOfDialogShenQuanDao(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/t4game/Gamble;->drawShenQuanDao(Ljavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/t4game/Gamble;->drawShenQuanDao(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/t4game/Gamble;->drawMibaoDetail(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public drawShenQuanDao(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const v13, 0x7a654a

    const v10, 0xffffff

    const/16 v4, 0x168

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v1, "\u795e\u62f3\u9053"

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v0, v4

    shr-int/lit8 v2, v0, 0x1

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v0, v4

    shr-int/lit8 v9, v0, 0x1

    add-int/lit8 v1, v9, 0x4

    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x44

    const/16 v2, 0x23

    sub-int v2, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u514d\u8d39\u731c\u62f3\u5269\u4f59\u6b21\u6570:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v3, p0, Lcom/t4game/Gamble;->freeGambleTimes:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v4, v8

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Gamble;->sfh:I

    add-int/lit8 v2, v0, 0x21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eca\u65e5\u80dc\u573a\u6b21\u6570:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v3, p0, Lcom/t4game/Gamble;->winTimes:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v4, v8

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Gamble;->sfh:I

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u795e\u62f3\u503c:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v3, p0, Lcom/t4game/Gamble;->fistValue:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v4, v8

    move v5, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/Gamble;->sfh:I

    add-int v3, v2, v0

    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    invoke-virtual {p1, v13}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v2, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    shr-int/lit8 v11, v2, 0x1

    add-int v2, v1, v11

    invoke-virtual {p1, v2, v3, v0, v10}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v2, v1

    sub-int v12, v2, v11

    sub-int v4, v12, v0

    invoke-virtual {p1, v4, v3, v0, v10}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-object v0, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int v2, v5, v2

    div-int/lit8 v6, v2, 0x2

    sub-int v0, v10, v0

    div-int/lit8 v0, v0, 0x2

    add-int v7, v3, v0

    add-int v2, v1, v11

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/t4game/Gamble;->drawFistImage(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    add-int v0, v3, v10

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v13}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v1, v12, v11

    invoke-virtual {p1, v9, v0, v1, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    invoke-direct {p0, p1, v1, v0}, Lcom/t4game/Gamble;->drawMiBao(Ljavax/microedition/lcdui/Graphics;II)V

    return-void
.end method

.method public getActionType()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    return v0
.end method

.method public initShenQuanDao()V
    .locals 6

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-string v5, ".png"

    new-array v0, v1, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    new-array v0, v1, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/shenquandao/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-short v1, p0, Lcom/t4game/Gamble;->mibaoIconId:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-short v1, p0, Lcom/t4game/Gamble;->mibaoIconId:S

    div-int/lit16 v1, v1, 0x3e8

    int-to-byte v1, v1

    iget-short v2, p0, Lcom/t4game/Gamble;->mibaoIconId:S

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->getOneGoodIcon(BS)V

    :cond_1
    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-short v3, p0, Lcom/t4game/Gamble;->mibaoIconId:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/shenquandao/result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gamble;->setDefultFistImag(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    :cond_4
    return-void
.end method

.method public paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sub-int v2, p3, v0

    const/4 v0, 0x1

    sub-int v3, p4, v0

    const/4 v4, 0x3

    move v0, p1

    move v1, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    sub-int v0, p1, v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x5

    sub-int v2, p3, v2

    const/4 v3, 0x5

    sub-int v3, p4, v3

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    sub-int v2, p3, v2

    const/4 v3, 0x3

    sub-int v3, p4, v3

    const/4 v4, 0x3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public pointerOfDialogShenQuanDao()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iget v1, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/t4game/Gamble;->shenQuanDaoMenuFunction(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/t4game/Gamble;->fistFunctionMenu(B)V

    goto :goto_0
.end method

.method public pressedAletCancel(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setActionType(B)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x236
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public pressedAletOK(I)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gamble;->sendGambleMessage(BB)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/t4game/Gamble;->sendGamblePickMibaoMessage(B)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x236
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public pressedOfDialogShenQuanDao(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, -0x7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/t4game/Gamble;->getActionType()B

    move-result v0

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/t4game/Gamble;->isSpark:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/t4game/Gamble;->clearGambleFixTimes()V

    invoke-direct {p0, p1}, Lcom/t4game/Gamble;->pressedOfFuntionShenQuanDao(I)V

    const/4 v0, -0x6

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_4

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u624b\u52a8\u731c\u62f3"

    aput-object v1, v0, v2

    const-string v1, "\u81ea\u52a8\u731c\u62f3"

    aput-object v1, v0, v3

    const-string v1, "\u731c\u62f33\u6b21"

    aput-object v1, v0, v5

    const-string v1, "\u62fe\u53d6\u79d8\u5b9d"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    :cond_3
    new-instance v1, Lcom/t4game/UI_Menu;

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    iput v3, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->PreState:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/t4game/Gamble;->releasShenQuanDao()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    invoke-virtual {p0}, Lcom/t4game/Gamble;->senGambleMibaoDetail()Z

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/t4game/Gamble;->shenQuanDaoMenuFunction(B)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gamble;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/t4game/Gamble;->fistFunctionMenu(B)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    if-ne v0, v4, :cond_0

    if-ne p1, v1, :cond_a

    iput v2, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/Gamble;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    goto/16 :goto_0
.end method

.method public processGambleMessage(Lcom/t4game/IoBuffer;)V
    .locals 6

    const/16 v5, 0x236

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->gambleState:B

    iget-byte v0, p0, Lcom/t4game/Gamble;->gambleState:B

    iget-byte v1, p0, Lcom/t4game/Gamble;->STATE_NORMAL:B

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->freeGambleTimes:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->winTimes:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->fistValue:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gamble;->hisWinTimes:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gamble;->hisTieTimes:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gamble;->hisFailTimes:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->pickMibaoTimes:S

    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/t4game/Gamble;->splitResultIcon(Ljava/lang/String;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->result:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/t4game/Gamble;->splitResultIcon(Ljava/lang/String;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/Gamble;->isSpark:Z

    :cond_0
    :goto_0
    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->mibaoSize:B

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/t4game/Gamble;->mibaoNames:[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoSize:B

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Lcom/t4game/Gamble;->mibaoSize:B

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/t4game/Gamble;->mibaoNames:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    if-eq v0, v3, :cond_2

    iget-byte v0, p0, Lcom/t4game/Gamble;->actionType:B

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/t4game/Gamble;->splitResultIcon(Ljava/lang/String;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->result:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultIcon:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gamble;->resultIcon:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/t4game/Gamble;->splitResultIcon(Ljava/lang/String;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultId:[B

    iget-object v0, p0, Lcom/t4game/Gamble;->resultId:[B

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/Gamble;->isSpark:Z

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Gamble;->gambleState:B

    iget-byte v1, p0, Lcom/t4game/Gamble;->STATE_CONFIRM:B

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/Gamble;->gambleState:B

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->mibaoIconId:S

    :cond_6
    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iput v5, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public processGambleMibaoDetail(Lcom/t4game/IoBuffer;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Gamble;->mibaoDetail:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/Gamble;->mibaoDetail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x238

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public processGamblePickMibaoMessage(Lcom/t4game/IoBuffer;)V
    .locals 3

    const/16 v2, 0x239

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    iput v2, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->state:B

    iget-byte v0, p0, Lcom/t4game/Gamble;->state:B

    iget-byte v1, p0, Lcom/t4game/Gamble;->STATE_NORMAL:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Gamble;->resultMibaoType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gamble;->pickMibaoTimes:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gamble;->resultPickMibao:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/Gamble;->isMibaoSpark:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Gamble;->state:B

    iget-byte v1, p0, Lcom/t4game/Gamble;->STATE_CONFIRM:B

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Gamble;->state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    goto :goto_0
.end method

.method public processLoadingBack(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/Gamble;->getActionType()B

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/Gamble;->initShenQuanDao()V

    iget-object v0, p0, Lcom/t4game/Gamble;->screen:Lcom/t4game/GameScreen;

    const/16 v1, -0x15

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Gamble;->gambleState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/Gamble;->setActionType(B)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/Gamble;->viewStateOfDialog:I

    invoke-direct {p0}, Lcom/t4game/Gamble;->initMibaoDetail()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x236
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public processMsg(ILcom/t4game/IoBuffer;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/t4game/Gamble;->processGambleMessage(Lcom/t4game/IoBuffer;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/t4game/Gamble;->processGamblePickMibaoMessage(Lcom/t4game/IoBuffer;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/t4game/Gamble;->processGambleMibaoDetail(Lcom/t4game/IoBuffer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x236
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public releasShenQuanDao()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->imgeFist:[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->resultId:[B

    iput-object v0, p0, Lcom/t4game/Gamble;->resultIdFixGuess:[B

    iput-object v0, p0, Lcom/t4game/Gamble;->resultImage:[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Gamble;->imgMibao:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v1}, Lcom/t4game/Gamble;->setMibaoIndex(B)V

    iput-boolean v1, p0, Lcom/t4game/Gamble;->isMibaoSpark:Z

    iput-boolean v1, p0, Lcom/t4game/Gamble;->isSpark:Z

    sput-object v0, Lcom/t4game/Gamble;->mibaoNames:[Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/Gamble;->mibaoSize:B

    return-void
.end method

.method public senGambleMibaoDetail()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x238

    iget-object v2, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendGambleMessage(BB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gamble;->result:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->result:[B

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Gamble;->finger:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gamble;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x236

    iget-object v2, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendGamblePickMibaoMessage(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gamble;->result:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gamble;->result:[B

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gamble;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gamble;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x239

    iget-object v2, p0, Lcom/t4game/Gamble;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setActionType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Gamble;->actionType:B

    return-void
.end method

.method public setDefultFistImag(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/t4game/Gamble;->defultFistImag:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-void
.end method

.method public setFinger(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Gamble;->finger:B

    return-void
.end method

.method public setMibaoIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Gamble;->mibaoIndex:B

    return-void
.end method
