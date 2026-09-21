.class public Lcom/t4game/FengShen;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/lcdui/Image;

.field private gw:Lcom/t4game/GameWorld;

.field private list1:Lcom/t4game/UList;

.field private list2:Lcom/t4game/UList;

.field private list3:Lcom/t4game/UList;

.field private page:Lcom/t4game/UPageLable;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private strList1:[Ljava/lang/String;

.field private strList2:[Ljava/lang/String;

.field private strList3:[Ljava/lang/String;

.field private strPage:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/FengShen;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iput-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iput-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    iput-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    iput-object v0, p0, Lcom/t4game/FengShen;->strPage:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/FengShen;->a:Ljavax/microedition/lcdui/Image;

    iput-object p1, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->release()V

    iput-object v1, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->released()V

    iput-object v1, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->released()V

    iput-object v1, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->released()V

    iput-object v1, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x25

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u6311\u6218\u8005\u540d\u5355"

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0, p1}, Lcom/t4game/UPageLable;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->getIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init()V
    .locals 11

    const/4 v10, -0x1

    const/16 v9, 0x14c

    const/16 v8, 0x20

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e1c\u56fd"

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const-string v2, "\u5317\u56fd"

    aput-object v2, v0, v1

    const-string v1, "\u5357\u56fd"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/FengShen;->strPage:[Ljava/lang/String;

    new-instance v0, Lcom/t4game/UPageLable;

    iget-object v1, p0, Lcom/t4game/FengShen;->strPage:[Ljava/lang/String;

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    sget v4, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    const/16 v4, 0x168

    const/16 v5, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/t4game/UPageLable;-><init>([Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iget-object v1, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iput-boolean v6, v0, Lcom/t4game/UList;->bFocus:Z

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    iget-object v2, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v2, v2, Lcom/t4game/UPageLable;->y:I

    iget-object v3, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v3, v3, Lcom/t4game/UPageLable;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/t4game/DraftingUtil;->dialogBodyHight:S

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v4, v4, Lcom/t4game/UPageLable;->h:I

    sub-int/2addr v3, v4

    sub-int v4, v3, v7

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    iget-object v1, p0, Lcom/t4game/FengShen;->strList2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iput-boolean v6, v0, Lcom/t4game/UList;->bFocus:Z

    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    iget-object v2, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v2, v2, Lcom/t4game/UPageLable;->y:I

    iget-object v3, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v3, v3, Lcom/t4game/UPageLable;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/t4game/DraftingUtil;->dialogBodyHight:S

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v4, v4, Lcom/t4game/UPageLable;->h:I

    sub-int/2addr v3, v4

    sub-int v4, v3, v7

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/UList;->setColorFont(Z)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    iget-object v1, p0, Lcom/t4game/FengShen;->strList3:[Ljava/lang/String;

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UList;->init([Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    iput-boolean v6, v0, Lcom/t4game/UList;->bFocus:Z

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    iget-object v2, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v2, v2, Lcom/t4game/UPageLable;->y:I

    iget-object v3, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v3, v3, Lcom/t4game/UPageLable;->h:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/t4game/DraftingUtil;->dialogBodyHight:S

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget v4, v4, Lcom/t4game/UPageLable;->h:I

    sub-int/2addr v3, v4

    sub-int v4, v3, v7

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v3, 0x4

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    return-void
.end method

.method public keyEvent(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x25

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/FengShen;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0, p1}, Lcom/t4game/UPageLable;->keyPressEvent(I)V

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iget-boolean v0, v0, Lcom/t4game/UPageLable;->bFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->getIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/FengShen;->list1:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iput-boolean v2, v0, Lcom/t4game/UPageLable;->bFocus:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/FengShen;->list2:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iput-boolean v2, v0, Lcom/t4game/UPageLable;->bFocus:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    iget-object v0, p0, Lcom/t4game/FengShen;->list3:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->bFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    iput-boolean v2, v0, Lcom/t4game/UPageLable;->bFocus:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pointEvent()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x25

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/FengShen;->page:Lcom/t4game/UPageLable;

    invoke-virtual {v0}, Lcom/t4game/UPageLable;->keyPointEvent()V

    goto :goto_0
.end method

.method public processMsg(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x26a

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    aput-object v0, v2, v4

    move v0, v5

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FengShen;->strList2:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    aput-object v0, v2, v4

    move v0, v5

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/t4game/FengShen;->strList2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FengShen;->strList3:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/FengShen;->strList1:[Ljava/lang/String;

    aput-object v0, v2, v4

    move v0, v5

    :goto_3
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/t4game/FengShen;->strList3:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/t4game/FengShen;->init()V

    goto/16 :goto_0
.end method

.method public released()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/FengShen;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FengShen;->gw:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/FengShen;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/FengShen;->strPage:[Ljava/lang/String;

    return-void
.end method
