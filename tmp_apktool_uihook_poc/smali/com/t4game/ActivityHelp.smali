.class public Lcom/t4game/ActivityHelp;
.super Ljava/lang/Object;


# static fields
.field public static final DISPLAY_DESC:B = 0x2t

.field public static final DISPLAY_LIST:B = 0x1t

.field public static final DISPLAY_MENU:B = 0x0t

.field public static final ROOT_NODE_ID:B = -0x1t

.field private static curDailog:Lcom/t4game/ActivityHelp;


# instance fields
.field private displayType:B

.field private focusIndex:B

.field private helpContent:[Ljava/lang/String;

.field private helpId:[I

.field private layer:B

.field private menu:Lcom/t4game/UI_Menu;

.field private parent:Lcom/t4game/ActivityHelp;

.field private screen:Lcom/t4game/GameScreen;

.field private strTag:Lcom/t4game/TagString;

.field private subDailogs:[Lcom/t4game/ActivityHelp;

.field private tagLines:B

.field private tagStartIndex:B


# direct methods
.method public constructor <init>(Lcom/t4game/ActivityHelp;Lcom/t4game/GameScreen;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    iput-byte v1, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    iput-byte v1, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iput-object p2, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    iput-object p1, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    iput-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->layer:B

    return-void

    :cond_0
    iget-byte v0, p1, Lcom/t4game/ActivityHelp;->layer:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurDailog()Lcom/t4game/ActivityHelp;
    .locals 1

    sget-object v0, Lcom/t4game/ActivityHelp;->curDailog:Lcom/t4game/ActivityHelp;

    return-object v0
.end method

.method private getFocusName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getRoot()Lcom/t4game/ActivityHelp;
    .locals 1

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    invoke-direct {v0}, Lcom/t4game/ActivityHelp;->getRoot()Lcom/t4game/ActivityHelp;

    move-result-object v0

    goto :goto_0
.end method

.method private goBackUpLayerDailog()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/ActivityHelp;->release()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    invoke-static {v0}, Lcom/t4game/ActivityHelp;->setCurDailog(Lcom/t4game/ActivityHelp;)V

    goto :goto_0
.end method

.method public static setCurDailog(Lcom/t4game/ActivityHelp;)V
    .locals 0

    sput-object p0, Lcom/t4game/ActivityHelp;->curDailog:Lcom/t4game/ActivityHelp;

    return-void
.end method

.method private startIntoNextDailog()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/t4game/ActivityHelp;->setCurDailog(Lcom/t4game/ActivityHelp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->helpId:[I

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aget v0, v0, v1

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->sendRequestHelpMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public initData(Lcom/t4game/IoBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->displayType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/ActivityHelp;->helpId:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    new-array v1, v0, [Lcom/t4game/ActivityHelp;

    iput-object v1, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->helpId:[I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initUI()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->displayType:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->layer:B

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameScreen;->setState(BZ)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :pswitch_2
    const-string v0, ""

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    array-length v1, v1

    move-object v2, v0

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/t4game/TagString;

    const v1, 0xffffff

    const/16 v3, 0x12c

    invoke-direct {v0, v2, v1, v3}, Lcom/t4game/TagString;-><init>(Ljava/lang/String;IS)V

    iput-object v0, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    iput-byte v4, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public keyPressed(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, -0x5

    const/4 v3, -0x6

    const/4 v2, -0x7

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->displayType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1}, Lcom/t4game/UI_Menu;->clearCommand()V

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->goBackUpLayerDailog()V

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->startIntoNextDailog()V

    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    array-length v1, v1

    int-to-byte v1, v1

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->pressedFunctionMenu(BBI)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->startIntoNextDailog()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_0

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->goBackUpLayerDailog()V

    goto :goto_0

    :pswitch_2
    if-ne p1, v6, :cond_6

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    if-lez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    :cond_4
    :goto_1
    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_5

    if-ne p1, v2, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->goBackUpLayerDailog()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    goto :goto_0

    :cond_6
    if-ne p1, v5, :cond_4

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v1}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPointerPressed()V
    .locals 4

    const/4 v3, -0x1

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->displayType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1}, Lcom/t4game/UI_Menu;->clearCommand()V

    if-eq v0, v3, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->goBackUpLayerDailog()V

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->startIntoNextDailog()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/t4game/ActivityHelp;->startIntoNextDailog()V

    :goto_1
    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    array-length v2, v2

    sget v3, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/PointerUtil;->scrollList(IIII)B

    move-result v0

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    sget v1, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/2addr v0, v1

    :goto_2
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    goto :goto_1

    :cond_3
    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/t4game/PointerUtil;->isAnyPointerReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v1}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/4 v8, 0x1

    const-string v1, "\u5e2e\u52a9\u7b54\u7591"

    iget-byte v0, p0, Lcom/t4game/ActivityHelp;->displayType:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    if-nez v0, :cond_0

    const-string v0, "\u5e2e\u52a9\u7b54\u7591"

    move-object v4, v1

    :goto_1
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v1, 0x158

    const/16 v2, 0x20

    const/16 v3, 0xc8

    iget-object v5, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    iget-byte v6, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    sget-byte v7, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v7, v7, 0x1

    int-to-byte v9, v7

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintMenu(IIIILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    invoke-direct {v0}, Lcom/t4game/ActivityHelp;->getFocusName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    if-nez v0, :cond_1

    const-string v0, "\u5e2e\u52a9\u7b54\u7591"

    move-object v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailogNoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x1e

    const/16 v2, 0x29

    iget-byte v3, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v4, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v5, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    add-int/2addr v4, v5

    sub-int/2addr v4, v8

    iget-object v5, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v5}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v4}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v4

    :goto_3
    const/4 v6, -0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v0}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    sub-int v7, v0, v1

    iget-byte v9, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    const/16 v1, 0x14

    sub-int v10, v0, v1

    const/16 v11, 0x26

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int v12, v0, v1

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v2, 0x25

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    sub-int v2, v0, v2

    iget-byte v3, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v4, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v2}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v2

    iget-byte v3, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v0, 0xa

    invoke-static {v2, v1, v8, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :goto_4
    const v2, 0xffffff

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x0

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    invoke-direct {v0}, Lcom/t4game/ActivityHelp;->getFocusName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    iget-byte v4, p0, Lcom/t4game/ActivityHelp;->tagStartIndex:B

    iget-byte v5, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    add-int/2addr v4, v5

    sub-int/2addr v4, v8

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v2}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v2

    iget-byte v3, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    rem-int/2addr v2, v3

    if-nez v2, :cond_4

    add-int/lit8 v2, v0, 0xa

    iget-object v3, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v3

    iget-byte v4, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    div-int/2addr v3, v4

    invoke-static {v2, v1, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v0, 0xa

    iget-object v3, p0, Lcom/t4game/ActivityHelp;->strTag:Lcom/t4game/TagString;

    invoke-virtual {v3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v3

    iget-byte v4, p0, Lcom/t4game/ActivityHelp;->tagLines:B

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/t4game/ActivityHelp;->release()V

    :cond_0
    iget-object v2, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    :cond_2
    iput-object v3, p0, Lcom/t4game/ActivityHelp;->parent:Lcom/t4game/ActivityHelp;

    iput-object v3, p0, Lcom/t4game/ActivityHelp;->helpContent:[Ljava/lang/String;

    iput-object v3, p0, Lcom/t4game/ActivityHelp;->helpId:[I

    sput-object v3, Lcom/t4game/ActivityHelp;->curDailog:Lcom/t4game/ActivityHelp;

    iput-object v3, p0, Lcom/t4game/ActivityHelp;->menu:Lcom/t4game/UI_Menu;

    return-void
.end method

.method public setFocusSubDailog(Lcom/t4game/ActivityHelp;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/ActivityHelp;->subDailogs:[Lcom/t4game/ActivityHelp;

    iget-byte v1, p0, Lcom/t4game/ActivityHelp;->focusIndex:B

    aput-object p1, v0, v1

    return-void
.end method
