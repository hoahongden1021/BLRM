.class Lcom/t4game/PageTable;
.super Ljava/lang/Object;


# instance fields
.field protected bFocus:Z

.field private gs:Lcom/t4game/GameScreen;

.field private gw:Lcom/t4game/GameWorld;

.field protected h:I

.field protected index:I

.field private lable:[Ljava/lang/String;

.field protected lableHeight:I

.field protected lableWidth:I

.field protected list:Lcom/t4game/List;

.field private newJob:Lcom/t4game/NewJob;

.field protected pageNum:I

.field protected w:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lcom/t4game/NewJob;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/t4game/PageTable;->index:I

    iput-boolean v2, p0, Lcom/t4game/PageTable;->bFocus:Z

    iput v3, p0, Lcom/t4game/PageTable;->pageNum:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/t4game/PageTable;->w:I

    iget v0, p0, Lcom/t4game/PageTable;->w:I

    iget v1, p0, Lcom/t4game/PageTable;->pageNum:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/PageTable;->lableWidth:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/t4game/PageTable;->lableHeight:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iput v0, p0, Lcom/t4game/PageTable;->x:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/PageTable;->y:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget v1, p0, Lcom/t4game/PageTable;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/PageTable;->lableHeight:I

    sub-int/2addr v0, v1

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/PageTable;->h:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u8f6c\u5316"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u5316\u795e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5e2e\u52a9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/PageTable;->lable:[Ljava/lang/String;

    iput-object p1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, p1, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/PageTable;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/PageTable;->gw:Lcom/t4game/GameWorld;

    return-void
.end method

.method private drawContext(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 12

    const/4 v11, -0x1

    const/16 v10, 0x14

    const/4 v5, 0x3

    const/4 v9, 0x1

    const/16 v7, 0x11

    const/16 v8, 0x168

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-byte v0, v0, Lcom/t4game/NewJob;->hasNewjob:B

    if-ne v0, v9, :cond_1

    iget v0, p0, Lcom/t4game/PageTable;->x:I

    add-int/lit8 v2, v0, 0x2d

    iget v0, p0, Lcom/t4game/PageTable;->y:I

    iget v1, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x41

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    iget-object v1, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v1, v1, Lcom/t4game/List;->index:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    iget-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget-object v0, v0, Lcom/t4game/List;->content:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v1, v1, Lcom/t4game/List;->index:I

    aget-object v1, v0, v1

    iget v0, p0, Lcom/t4game/PageTable;->y:I

    iget v3, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x14

    move v4, v7

    move v5, v11

    move v6, v11

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sub-int v0, v8, v2

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    add-int v3, v0, v1

    const-string v0, "\u70b9\u51fb\u786e\u5b9a,\u8fdb\u884c\u672c\u4f53\u4e0e\u5316\u795e\u7684\u8f6c\u5316,\u4e00\u5b9a\u65f6\u95f4\u5185\u53ea\u80fd\u8fdb\u884c\u4e00\u6b21\u8f6c\u5316"

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/PageTable;->y:I

    iget v4, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x14

    const/16 v4, 0xa

    move v5, v11

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->mid:I

    iget v1, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v0, v1

    const v1, 0x7a654a

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    iget v2, p0, Lcom/t4game/PageTable;->x:I

    add-int/2addr v2, v8

    invoke-virtual {p1, v1, v0, v2, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    invoke-virtual {v0, p1}, Lcom/t4game/List;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u60a8\u8fd8\u6ca1\u6709\u5316\u795e,\u65e0\u6cd5\u8f6c\u6362!\u8bf7\u8fdb\u5165\u5316\u795e\u754c\u9762\u8fdb\u884c\u5316\u795e"

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/t4game/PageTable;->y:I

    iget v3, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    invoke-static {v0, v1, v2, v11, p1}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIILjavax/microedition/lcdui/Graphics;)I

    goto/16 :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/PageTable;->x:I

    shr-int/lit8 v1, v8, 0x1

    add-int/lit16 v6, v0, 0xb4

    iget v0, p0, Lcom/t4game/PageTable;->y:I

    iget v1, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x41

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->buttonIndex:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x50

    sub-int v1, v6, v1

    const/16 v2, 0x37

    sub-int v2, v3, v2

    invoke-virtual {p1, v0, v1, v2, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->wushenMan:Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->wushenMan:Lcom/t4game/MiniPlayer;

    const/16 v1, 0x28

    sub-int v2, v6, v1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_3
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x37

    sub-int v1, v3, v1

    invoke-virtual {p1, v0, v6, v1, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->wushenWoman:Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->wushenWoman:Lcom/t4game/MiniPlayer;

    add-int/lit8 v2, v6, 0x28

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_5
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x28

    sub-int v1, v6, v1

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_6
    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u6b66\u795e"

    const/16 v1, 0x28

    sub-int v1, v6, v1

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u5723\u4ed9"

    add-int/lit8 v1, v6, 0x28

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x1e

    sub-int v1, v6, v1

    add-int/lit8 v2, v3, 0xf

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zhiye:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zhiye:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_8
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->jobInfo:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->buttonIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    add-int/lit8 v2, v3, 0x37

    const/16 v3, 0x190

    const/16 v4, 0xa

    move v5, v11

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->buttonIndex:I

    if-ne v0, v9, :cond_7

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v9

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v9

    const/16 v1, 0x50

    sub-int v1, v6, v1

    const/16 v2, 0x37

    sub-int v2, v3, v2

    invoke-virtual {p1, v0, v1, v2, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_a
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->shengxianMan:Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->shengxianMan:Lcom/t4game/MiniPlayer;

    const/16 v1, 0x28

    sub-int v2, v6, v1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_b
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v9

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v9

    const/16 v1, 0x37

    sub-int v1, v3, v1

    invoke-virtual {p1, v0, v6, v1, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_c
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->shengxianWoman:Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->shengxianWoman:Lcom/t4game/MiniPlayer;

    add-int/lit8 v2, v6, 0x28

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_d
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, v6, 0x28

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_e
    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u6b66\u795e"

    const/16 v1, 0x28

    sub-int v1, v6, v1

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u5723\u4ed9"

    add-int/lit8 v1, v6, 0x28

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, v6, 0x3c

    add-int/lit8 v2, v3, 0xf

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->lineNum:I

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v2, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v2, v2, Lcom/t4game/NewJob;->lineNum:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v2, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v2, v2, Lcom/t4game/NewJob;->lineNum:I

    mul-int/2addr v1, v2

    :goto_2
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v2, v2, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v3, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v3, v3, Lcom/t4game/NewJob;->lineNum:I

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    const v3, 0xffc700

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v3, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v3, v3, Lcom/t4game/NewJob;->helpInfo1:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v3, v3, Lcom/t4game/NewJob;->helpInfo1:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/t4game/PageTable;->x:I

    add-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/t4game/PageTable;->y:I

    iget v6, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v2, v6

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {p1, v3, v4, v2, v10}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V
    .locals 8

    int-to-short v7, p4

    if-eqz p7, :cond_2

    const/16 v0, 0x11

    const/16 v1, 0x71

    const/16 v2, 0x81

    invoke-virtual {p2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, v7, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0x11

    const/16 v1, 0x71

    const/16 v2, 0x81

    invoke-virtual {p2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, v7, p6

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v7, p6

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, v7, p6

    add-int/lit8 v1, v1, 0x1

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v7, p6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, p3, p5

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v7, v1, v7}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    sub-int v1, v7, v1

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int v3, v7, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-boolean v0, p0, Lcom/t4game/PageTable;->bFocus:Z

    if-nez v0, :cond_0

    const v0, 0xffff00

    invoke-virtual {p2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, v7, 0x1

    const/4 v2, 0x2

    sub-int v2, p5, v2

    const/4 v3, 0x2

    sub-int v3, p6, v3

    const/4 v4, 0x3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, v7, 0x2

    const/4 v2, 0x4

    sub-int v2, p5, v2

    const/4 v3, 0x4

    sub-int v3, p6, v3

    const/4 v4, 0x3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, v7, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v9, 0x0

    move v8, v9

    :goto_0
    iget v0, p0, Lcom/t4game/PageTable;->pageNum:I

    if-ge v8, v0, :cond_1

    iget v0, p0, Lcom/t4game/PageTable;->x:I

    iget v1, p0, Lcom/t4game/PageTable;->lableWidth:I

    mul-int/2addr v1, v8

    add-int v3, v0, v1

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->lable:[Ljava/lang/String;

    aget-object v1, v0, v8

    iget v4, p0, Lcom/t4game/PageTable;->y:I

    iget v5, p0, Lcom/t4game/PageTable;->lableWidth:I

    iget v6, p0, Lcom/t4game/PageTable;->lableHeight:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/t4game/PageTable;->drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/PageTable;->lable:[Ljava/lang/String;

    aget-object v1, v0, v8

    iget v4, p0, Lcom/t4game/PageTable;->y:I

    iget v5, p0, Lcom/t4game/PageTable;->lableWidth:I

    iget v6, p0, Lcom/t4game/PageTable;->lableHeight:I

    move-object v0, p0

    move-object v2, p1

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/t4game/PageTable;->drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/t4game/PageTable;->index:I

    invoke-direct {p0, p1, v0}, Lcom/t4game/PageTable;->drawContext(Ljavax/microedition/lcdui/Graphics;I)V

    return-void
.end method

.method public init()V
    .locals 6

    new-instance v0, Lcom/t4game/List;

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    invoke-direct {v0, v1}, Lcom/t4game/List;-><init>(Lcom/t4game/NewJob;)V

    iput-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v1, p0, Lcom/t4game/PageTable;->x:I

    int-to-short v1, v1

    iget-object v2, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v2, v2, Lcom/t4game/NewJob;->mid:I

    iget v3, p0, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iget v3, p0, Lcom/t4game/PageTable;->w:I

    int-to-short v3, v3

    iget v4, p0, Lcom/t4game/PageTable;->lableHeight:I

    int-to-short v4, v4

    iget-object v5, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v5, v5, Lcom/t4game/NewJob;->userName:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/List;->init(SSSS[Ljava/lang/String;)V

    return-void
.end method

.method public keyPointEvent(II)V
    .locals 0

    return-void
.end method

.method public keyPressEvent(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x3

    const/4 v4, -0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/t4game/PageTable;->bFocus:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    invoke-virtual {v0, p1}, Lcom/t4game/List;->keyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/t4game/PageTable;->bFocus:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/PageTable;->index:I

    if-ne v0, v2, :cond_6

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v0, Lcom/t4game/NewJob;->buttonIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/NewJob;->buttonIndex:I

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->buttonIndex:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iput v3, v0, Lcom/t4game/NewJob;->buttonIndex:I

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_4

    iput-boolean v3, p0, Lcom/t4game/PageTable;->bFocus:Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x6

    if-eq p1, v0, :cond_5

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5411\u670d\u52a1\u5668\u53d1\u9001\u5316\u4ed9\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    const/16 v1, 0x24d

    invoke-virtual {v0, v1, v3}, Lcom/t4game/NewJob;->sendMsg(IB)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/PageTable;->index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v6, :cond_7

    iput-boolean v3, p0, Lcom/t4game/PageTable;->bFocus:Z

    goto :goto_0

    :cond_7
    if-ne p1, v5, :cond_8

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v0, Lcom/t4game/NewJob;->pageIndex:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->pageIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->pageNum:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/NewJob;->pageIndex:I

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v0, Lcom/t4game/NewJob;->pageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v0, v0, Lcom/t4game/NewJob;->pageIndex:I

    iget-object v1, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->pageNum:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/PageTable;->newJob:Lcom/t4game/NewJob;

    iput v3, v0, Lcom/t4game/NewJob;->pageIndex:I

    goto :goto_0

    :cond_9
    if-ne p1, v5, :cond_a

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/PageTable;->index:I

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    if-gt v0, v6, :cond_0

    iget v0, p0, Lcom/t4game/PageTable;->pageNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/PageTable;->index:I

    goto/16 :goto_0

    :cond_a
    if-ne p1, v4, :cond_b

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/PageTable;->index:I

    iget v0, p0, Lcom/t4game/PageTable;->index:I

    iget v1, p0, Lcom/t4game/PageTable;->pageNum:I

    if-lt v0, v1, :cond_0

    iput v3, p0, Lcom/t4game/PageTable;->index:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/PageTable;->bFocus:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/PageTable;->bFocus:Z

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    return-void
.end method
