.class public Lcom/t4game/FlashScreen;
.super Ljavax/microedition/lcdui/Canvas;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field E62Image:Ljavax/microedition/lcdui/Image;

.field end:Ljava/lang/String;

.field endM:Ljava/lang/String;

.field private g:Ljavax/microedition/lcdui/Graphics;

.field private iCurrentState:B

.field private iKeyCode:I

.field private iStateTick:I

.field private imgAnimDownLogo:Ljavax/microedition/lcdui/Image;

.field private imgAnimMidLogo:Ljavax/microedition/lcdui/Image;

.field private imgAnimUpLogo:Ljavax/microedition/lcdui/Image;

.field private imgBGLine:Ljavax/microedition/lcdui/Image;

.field private imgButton:Ljavax/microedition/lcdui/Image;

.field private imgGAnimLogo:Ljavax/microedition/lcdui/Image;

.field private imgLine:Ljavax/microedition/lcdui/Image;

.field private imgLogo:Ljavax/microedition/lcdui/Image;

.field private imgMachineMiddleDown:Ljavax/microedition/lcdui/Image;

.field private imgMachineMiddleUp:Ljavax/microedition/lcdui/Image;

.field private imgT4Logo:Ljavax/microedition/lcdui/Image;

.field private imgTitle:Ljavax/microedition/lcdui/Image;

.field private imgZSLogo:Ljavax/microedition/lcdui/Image;

.field private isRunning:Z

.field private final sg:Lcom/t4game/StartGame;

.field private soundPlayer:Lcom/t4game/SoundPlayer;

.field start:Ljava/lang/String;

.field startM:Ljava/lang/String;

.field private timeN:Z


# direct methods
.method constructor <init>(Lcom/t4game/StartGame;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    iput-boolean v2, p0, Lcom/t4game/FlashScreen;->timeN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->E62Image:Ljavax/microedition/lcdui/Image;

    iput-object p1, p0, Lcom/t4game/FlashScreen;->sg:Lcom/t4game/StartGame;

    invoke-virtual {p0, v2}, Lcom/t4game/FlashScreen;->setFullScreenMode(Z)V

    invoke-virtual {p0}, Lcom/t4game/FlashScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/t4game/FlashScreen;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/t4game/Defaults;->setResolutionRatio(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/t4game/FlashScreen;->switchState(B)V

    iput-boolean v2, p0, Lcom/t4game/FlashScreen;->isRunning:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private missFlash()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->E62Image:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgLogo:Ljavax/microedition/lcdui/Image;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/FlashScreen;->isRunning:Z

    iget-object v0, p0, Lcom/t4game/FlashScreen;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->doneFlash()V

    return-void
.end method

.method private switchState(B)V
    .locals 3

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/FlashScreen;->iCurrentState:B

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/t4game/FlashScreen;->updateState(BB)V

    iput-byte p1, p0, Lcom/t4game/FlashScreen;->iCurrentState:B

    iput v2, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    iget-byte v0, p0, Lcom/t4game/FlashScreen;->iCurrentState:B

    invoke-direct {p0, v0, v2}, Lcom/t4game/FlashScreen;->updateState(BB)V

    return-void
.end method

.method private updateState(BB)V
    .locals 10

    const/4 v9, -0x1

    const/4 v0, 0x3

    const/16 v8, 0x7f

    const/4 v1, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-string v0, "/Main_Title.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/EImage.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->E62Image:Ljavax/microedition/lcdui/Image;

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/t4game/FlashScreen;->switchState(B)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v1, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {v1, v7, v7, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v2, p0, Lcom/t4game/FlashScreen;->imgLogo:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v1, v2, v0, v7, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const-string v0, "/button.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgButton:Ljavax/microedition/lcdui/Image;

    const-string v0, "/line.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgLine:Ljavax/microedition/lcdui/Image;

    new-instance v0, Lcom/t4game/SoundPlayer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/t4game/SoundPlayer;-><init>(I)V

    iput-object v0, p0, Lcom/t4game/FlashScreen;->soundPlayer:Lcom/t4game/SoundPlayer;

    goto :goto_0

    :pswitch_6
    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    const/16 v2, 0x127

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    const/16 v4, 0x24

    const/16 v5, 0x13

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    iget-object v0, p0, Lcom/t4game/FlashScreen;->soundPlayer:Lcom/t4game/SoundPlayer;

    const-string v1, "/tone.midi"

    invoke-virtual {v0, v1}, Lcom/t4game/SoundPlayer;->playMIDI(Ljava/lang/String;)V

    sput v9, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sput v9, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/t4game/FlashScreen;->switchState(B)V

    sput v9, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sput v9, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xc7

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    const/16 v2, 0x127

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    const/16 v4, 0x24

    const/16 v5, 0x13

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v7, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/t4game/FlashScreen;->switchState(B)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v1, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {v1, v7, v7, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v2, p0, Lcom/t4game/FlashScreen;->imgLogo:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v1, v2, v0, v7, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    const-string v0, "\u662f\u5426\u5f00\u542f\u58f0\u97f3\uff1f"

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10e

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffffff

    iget-object v6, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    move v4, v9

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgLine:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x122

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v7, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgButton:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x4

    const/16 v3, 0x128

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgButton:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xc8

    const/16 v3, 0x128

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const-string v0, "\u662f"

    const/16 v1, 0xe

    const/16 v2, 0x129

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffffff

    iget-object v6, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    move v4, v9

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u5426"

    const/16 v1, 0xd2

    const/16 v2, 0x129

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffffff

    iget-object v6, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    move v4, v9

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :pswitch_8
    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgButton:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgLine:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/FlashScreen;->E62Image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/t4game/FlashScreen;->E62Image:Ljavax/microedition/lcdui/Image;

    goto/16 :goto_0

    :pswitch_9
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "/bg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgBGLine:Ljavax/microedition/lcdui/Image;

    const-string v0, "/title.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgTitle:Ljavax/microedition/lcdui/Image;

    const-string v0, "/t4logo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgT4Logo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/gAnimLogo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgGAnimLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/zsLogo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgZSLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/animUpLogo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgAnimUpLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/animDownLogo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgAnimDownLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/animMidLogo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgAnimMidLogo:Ljavax/microedition/lcdui/Image;

    const-string v0, "/machineMiddleUp.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleUp:Ljavax/microedition/lcdui/Image;

    const-string v0, "/machineMiddleDown.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleDown:Ljavax/microedition/lcdui/Image;

    goto/16 :goto_0

    :pswitch_b
    iget v0, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    sget-object v1, Lcom/t4game/Defaults;->FLASHSCREEN_ANIMATION_INF:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/FlashScreen;->missFlash()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v1, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {v1, v7, v7, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move v1, v7

    :goto_1
    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v3, p0, Lcom/t4game/FlashScreen;->imgBGLine:Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x37

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v3, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleUp:Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v4, v1, 0x34

    add-int/lit8 v4, v4, 0x2b

    const/16 v5, 0x66

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v2, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v3, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleDown:Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v4, v1, 0x34

    add-int/lit8 v4, v4, 0x2b

    const/16 v5, 0xbb

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgGAnimLogo:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2b

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgTitle:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x5f

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    sget-object v2, Lcom/t4game/Defaults;->FLASHSCREEN_ANIMATION_INF:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    if-ge v1, v2, :cond_9

    iget v1, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    new-array v2, v0, [Ljavax/microedition/lcdui/Image;

    move v3, v7

    :goto_3
    if-ge v3, v0, :cond_8

    sget-object v4, Lcom/t4game/Defaults;->FLASHSCREEN_ANIMATION_INF:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/t4game/FlashScreen;->imgAnimDownLogo:Ljavax/microedition/lcdui/Image;

    aput-object v4, v2, v3

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/t4game/Defaults;->FLASHSCREEN_ANIMATION_INF:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/t4game/FlashScreen;->imgAnimMidLogo:Ljavax/microedition/lcdui/Image;

    aput-object v4, v2, v3

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/t4game/Defaults;->FLASHSCREEN_ANIMATION_INF:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/t4game/FlashScreen;->imgAnimUpLogo:Ljavax/microedition/lcdui/Image;

    aput-object v4, v2, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    aget-object v1, v2, v7

    const/16 v3, 0x2b

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v3, v8, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    aget-object v1, v2, v1

    const/16 v3, 0x5f

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v3, v8, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    const/16 v2, 0x93

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgT4Logo:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2b

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgGAnimLogo:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x5f

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/FlashScreen;->imgZSLogo:Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x93

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v2, v8, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0

    :pswitch_d
    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgBGLine:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgTitle:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgT4Logo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgGAnimLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgZSLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgAnimUpLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgAnimDownLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgAnimMidLogo:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleUp:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/FlashScreen;->imgMachineMiddleDown:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/FlashScreen;->soundPlayer:Lcom/t4game/SoundPlayer;

    invoke-virtual {v0}, Lcom/t4game/SoundPlayer;->destroy()V

    iput-object v1, p0, Lcom/t4game/FlashScreen;->soundPlayer:Lcom/t4game/SoundPlayer;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected keyReleased(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/FlashScreen;->iKeyCode:I

    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iput-object p1, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    iget-byte v0, p0, Lcom/t4game/FlashScreen;->iCurrentState:B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/t4game/FlashScreen;->updateState(BB)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/t4game/Util;->paintMemory(Ljavax/microedition/lcdui/Graphics;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/FlashScreen;->g:Ljavax/microedition/lcdui/Graphics;

    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerAnyReleasedX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerReleasedInputX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerSoftKeyX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerAnyReleasedY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerReleasedInputY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerSoftKeyY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x64

    :goto_0
    iget-boolean v0, p0, Lcom/t4game/FlashScreen;->isRunning:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iget-byte v2, p0, Lcom/t4game/FlashScreen;->iCurrentState:B

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/t4game/FlashScreen;->updateState(BB)V

    iget v2, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/t4game/FlashScreen;->iStateTick:I

    invoke-virtual {p0}, Lcom/t4game/FlashScreen;->repaint()V

    invoke-virtual {p0}, Lcom/t4game/FlashScreen;->serviceRepaints()V

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v0, v4, v0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
