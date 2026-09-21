.class public Lcom/t4game/T4gameRecharge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/IRecharge;
.implements Lcom/t4game/zhushen/alipay/IAliPayMessage;


# static fields
.field private static LOADINGBACK:B = 0x0t

.field private static NOLOADING:B = 0x0t

.field private static ONLOADING:B = 0x0t

.field private static final query:B = 0x0t

.field private static final recharge:B = 0x1t


# instance fields
.field private final BANK_TRANSFER:Ljava/lang/String;

.field private final Card:Ljava/lang/String;

.field private MaxInput:I

.field private final Mobile:Ljava/lang/String;

.field private final NewMobile:Ljava/lang/String;

.field private final ONLINE_BANKING:Ljava/lang/String;

.field private PKId:I

.field private RechargeType:Ljava/lang/String;

.field private final SMS:Ljava/lang/String;

.field private final Wap:Ljava/lang/String;

.field private attct:Lcom/t4game/Recharge;

.field private loading:B

.field private mProgress:Landroid/app/ProgressDialog;

.field private menu:Lcom/t4game/UI_Menu;

.field private menuIndex:I

.field private screenId:B

.field private smsUrl:Ljava/lang/String;

.field private smstxt:Ljava/lang/String;

.field public ui:Lcom/t4game/GameUi;

.field private viewStateOfDialog:B

.field private view_infor:Ljava/lang/String;

.field private worldAlertMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/T4gameRecharge;->NOLOADING:B

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    const/4 v0, 0x2

    sput-byte v0, Lcom/t4game/T4gameRecharge;->LOADINGBACK:B

    return-void
.end method

.method public constructor <init>(Lcom/t4game/Recharge;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    iput-byte v2, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    const-string v0, ""

    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    iput-byte v2, p0, Lcom/t4game/T4gameRecharge;->loading:B

    const-string v0, ""

    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    const-string v0, "CARD"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->Card:Ljava/lang/String;

    const-string v0, "SMS"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->SMS:Ljava/lang/String;

    const-string v0, "CMCC_JAVA_DOWN"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->Mobile:Ljava/lang/String;

    const-string v0, "CMCC_NEW_PLT"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->NewMobile:Ljava/lang/String;

    const-string v0, "WAP"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->Wap:Ljava/lang/String;

    const-string v0, "BANK_TRANSFER"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->BANK_TRANSFER:Ljava/lang/String;

    const-string v0, "ONLINE_BANKING"

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ONLINE_BANKING:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/t4game/T4gameRecharge;->mProgress:Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    return-void
.end method

.method private draw_query_charge(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x34f

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method private draw_recharge(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x9

    iput v1, v0, Lcom/t4game/UI_Menu;->h:I

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x357

    invoke-static {v2, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    if-nez v0, :cond_2

    const/16 v0, 0x51f

    invoke-static {v2, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    :cond_2
    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_CommandButtom;

    check-cast p0, Lcom/t4game/UI_CommandButtom;

    return-object p0
.end method

.method private onPointerQuery()V
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    iget-short v0, v0, Lcom/t4game/UI_CommandButtom;->x:S

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v2

    iget-short v2, v2, Lcom/t4game/UI_CommandButtom;->y:S

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v4

    iget-short v4, v4, Lcom/t4game/UI_CommandButtom;->w:S

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v5

    iget-short v5, v5, Lcom/t4game/UI_CommandButtom;->h:S

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->processkeyEvent(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->lastPointedUi:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    if-le v0, v1, :cond_0

    iput-byte v6, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    if-le v0, v1, :cond_0

    iput-byte v6, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x702

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v6}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onPointerRecharge()V
    .locals 10

    const/4 v9, -0x6

    const/16 v5, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    iput v0, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    iget-boolean v0, v0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v7, v6}, Lcom/t4game/Recharge;->setState(BZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-object v0, v0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u8054\u52a8\u4f18\u52bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v0

    iget v1, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Sdk_LD;->pkid:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Sdk_LD;->sendOrderMsg(II)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-object v0, v0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4gameRecharge;->onPressed_ALi_Recharge()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v7, v6}, Lcom/t4game/Recharge;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Lcom/t4game/Recharge;->setState(BZ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v7}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    iget-short v0, v0, Lcom/t4game/UI_CommandButtom;->x:S

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    invoke-direct {p0, v7}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v2

    iget-short v2, v2, Lcom/t4game/UI_CommandButtom;->y:S

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-direct {p0, v7}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v4

    iget-short v4, v4, Lcom/t4game/UI_CommandButtom;->w:S

    invoke-direct {p0, v7}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v5

    iget-short v5, v5, Lcom/t4game/UI_CommandButtom;->h:S

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/t4game/T4gameRecharge;->processkeyEvent(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    iget-short v0, v0, Lcom/t4game/UI_CommandButtom;->x:S

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v2

    iget-short v2, v2, Lcom/t4game/UI_CommandButtom;->y:S

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v4

    iget-short v4, v4, Lcom/t4game/UI_CommandButtom;->w:S

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v5

    iget-short v5, v5, Lcom/t4game/UI_CommandButtom;->h:S

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/t4game/T4gameRecharge;->processkeyEvent(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "CMCC_NEW_PLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "WAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, v8}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    iget-short v0, v0, Lcom/t4game/UI_CommandButtom;->x:S

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    invoke-direct {p0, v8}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v2

    iget-short v2, v2, Lcom/t4game/UI_CommandButtom;->y:S

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-direct {p0, v8}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v4

    iget-short v4, v4, Lcom/t4game/UI_CommandButtom;->w:S

    invoke-direct {p0, v8}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v5

    iget-short v5, v5, Lcom/t4game/UI_CommandButtom;->h:S

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/t4game/T4gameRecharge;->processkeyEvent(I)V

    goto/16 :goto_0

    :cond_a
    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->lastPointedUi:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    if-le v0, v1, :cond_1

    iput-byte v6, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x703

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, p0, v2}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x704

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v8}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x705

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v7}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x706

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x707

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, p0, v2}, Lcom/t4game/Recharge;->showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_c
    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->processkeyEvent(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onPressedQuery(I)V
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    const/4 v0, -0x6

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_6

    :cond_2
    invoke-virtual {p0, v1}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x351

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/t4game/T4gameRecharge;->MaxInput:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x352

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x353

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->SendRecharge_Consume_Message(I)Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    :cond_7
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Recharge;->setState(BZ)V

    goto :goto_0
.end method

.method private onPressedRecharge(I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v7, "CARD"

    const-string v6, ""

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iput v0, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-object v0, v0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u8054\u52a8\u4f18\u52bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v0

    iget v1, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v2

    iget v2, v2, Lcom/t4game/Sdk_LD;->pkid:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Sdk_LD;->sendOrderMsg(II)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-object v0, v0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4gameRecharge;->onPressed_ALi_Recharge()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/t4game/UI_InputBox;

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x5

    invoke-virtual {p0, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-byte v1, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    const/4 v1, -0x6

    if-eq p1, v1, :cond_8

    const/4 v1, -0x5

    if-ne p1, v1, :cond_13

    :cond_8
    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    aget-object v1, v0, v4

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x359

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->clearAction()V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x35a

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    aget-object v1, v0, v5

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x35b

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    aget-object v1, v0, v3

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    aget-object v2, v0, v4

    iget-object v2, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iget-object v3, v3, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/t4game/T4gameRecharge;->SendRecharge_Card_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "CMCC_NEW_PLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "WAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {p0, v4}, Lcom/t4game/T4gameRecharge;->getChoiceBox(I)Lcom/t4game/UI_ChoiceBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/UI_ChoiceBox;->GetCommand()[B

    move-result-object v0

    aget-byte v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->SendRecharge_New_Mobile_PLT_Message(B)Z

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v4}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x35c

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->SendRecharge_SMS_Message(I)B

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x35d

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    const/16 v1, 0x35e

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const/4 v1, -0x7

    if-ne p1, v1, :cond_14

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x23

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v2, v2, Lcom/t4game/GameUi;->focus:B

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    iget-byte v2, v2, Lcom/t4game/UI_InputBox;->inputType:B

    sub-int v2, v4, v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/t4game/UI_InputBox;->inputType:B

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/UI_InputBox;->inputType:B

    if-nez v0, :cond_15

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->setMunLock()V

    goto/16 :goto_2

    :cond_15
    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->clearMunLock()V

    goto/16 :goto_2

    :cond_16
    iget-byte v1, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    if-ne v1, v4, :cond_17

    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    iput-byte v3, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v1, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-string v3, ""

    iput-object v6, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/t4game/UI_InputBox;->clearInput()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    iget-byte v1, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    iput-byte v3, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v1, v5, v4}, Lcom/t4game/Recharge;->setState(BZ)V

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v2, "CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-string v3, ""

    iput-object v6, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/t4game/UI_InputBox;->clearInput()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private onPressed_ALi_Recharge()V
    .locals 5

    invoke-static {p0}, Lj2ab/android/app/J2ABMIDletActivity;->setChannelAuthenticate(Lcom/t4game/zhushen/alipay/IAliPayMessage;)V

    invoke-static {}, Lj2ab/android/alipay/DataManager_AliPay;->getInstance()Lj2ab/android/alipay/DataManager_AliPay;

    move-result-object v0

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/Sdk_LD;->money:[I

    iget v2, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lj2ab/android/alipay/DataManager_AliPay;->setAmount(I)V

    invoke-static {}, Lj2ab/android/alipay/DataManager_AliPay;->getInstance()Lj2ab/android/alipay/DataManager_AliPay;

    move-result-object v0

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    sget-object v1, Lcom/t4game/Sdk_LD;->str:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/T4gameRecharge;->menuIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lj2ab/android/alipay/DataManager_AliPay;->setGoodDesc(Ljava/lang/String;)V

    invoke-static {}, Lj2ab/android/alipay/DataManager_AliPay;->getInstance()Lj2ab/android/alipay/DataManager_AliPay;

    move-result-object v0

    invoke-virtual {v0}, Lj2ab/android/alipay/DataManager_AliPay;->getAmount()I

    move-result v0

    invoke-static {}, Lj2ab/android/alipay/DataManager_AliPay;->getInstance()Lj2ab/android/alipay/DataManager_AliPay;

    move-result-object v1

    invoke-virtual {v1}, Lj2ab/android/alipay/DataManager_AliPay;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lj2ab/android/alipay/DataManager_AliPay;->getInstance()Lj2ab/android/alipay/DataManager_AliPay;

    move-result-object v2

    invoke-virtual {v2}, Lj2ab/android/alipay/DataManager_AliPay;->getGoodsDesc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-virtual {v3}, Lj2ab/android/app/J2ABMIDletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/t4game/T4gameRecharge$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/t4game/T4gameRecharge$1;-><init>(Lcom/t4game/T4gameRecharge;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processSecretAliPayResult()V
    .locals 3

    const-string v2, "\u5145\u503c\u5931\u8d25"

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/T4gameRecharge;->NOLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u5145\u503c\u5931\u8d25"

    move-object v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/t4game/T4gameRecharge;->processToastValue(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "\u5145\u503c\u5931\u8d25"

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    const-string v0, "\u6b63\u5728\u5145\u503c"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5145\u503c\u6210\u529f"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processToastValue(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-virtual {v0}, Lj2ab/android/app/J2ABMIDletActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/t4game/T4gameRecharge$2;

    invoke-direct {v1, p0, p1}, Lcom/t4game/T4gameRecharge$2;-><init>(Lcom/t4game/T4gameRecharge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setView(B)V
    .locals 1

    iput-byte p1, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public SendRecharge_Card_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-byte v0, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/T4gameRecharge;->PKId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x121

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendRecharge_Consume_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x122

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public SendRecharge_New_Mobile_PLT_Message(B)Z
    .locals 3

    sget-byte v0, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x12b

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public SendRecharge_SMS_Message(I)B
    .locals 3

    if-gtz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/t4game/SendSms;

    invoke-direct {v0}, Lcom/t4game/SendSms;-><init>()V

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->smsUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->smstxt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/t4game/SendSms;->sendMessage(Ljava/lang/String;Ljava/lang/String;I)B

    move-result v0

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/T4gameRecharge;->draw_query_charge(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/T4gameRecharge;->draw_recharge(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public getChoiceBox(I)Lcom/t4game/UI_ChoiceBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_ChoiceBox;

    check-cast p0, Lcom/t4game/UI_ChoiceBox;

    return-object p0
.end method

.method public getInputBox(I)Lcom/t4game/UI_InputBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_InputBox;

    check-cast p0, Lcom/t4game/UI_InputBox;

    return-object p0
.end method

.method public getTextBox(I)Lcom/t4game/UI_TextBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    check-cast p0, Lcom/t4game/UI_TextBox;

    return-object p0
.end method

.method public getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_FunctionItem;

    check-cast p0, Lcom/t4game/UI_FunctionItem;

    return-object p0
.end method

.method public initQueryChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/QueryChange.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->getTextBox(I)Lcom/t4game/UI_TextBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/t4game/T4gameRecharge;->getTextBox(I)Lcom/t4game/UI_TextBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x34e

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    const/16 v1, 0x350

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    return-void
.end method

.method public initRechargeUIByBin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/16 v5, 0x358

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    :cond_0
    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    iput-byte v4, v0, Lcom/t4game/GameUi;->commandType:B

    const-string v0, "SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/sms_recharge.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    iput-byte v3, v0, Lcom/t4game/UI_InputBox;->inputType:B

    invoke-virtual {p0, v3}, Lcom/t4game/T4gameRecharge;->getTextBox(I)Lcom/t4game/UI_TextBox;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x354

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    invoke-static {v2, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/card_recharge.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/t4game/T4gameRecharge;->getTextBox(I)Lcom/t4game/UI_TextBox;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x59f

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x355

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x5a0

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->getUI_FunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v0

    const/16 v1, 0x356

    invoke-static {v2, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    invoke-static {v2, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "CMCC_NEW_PLT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/NewMobile_recharge.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    invoke-direct {p0, v4}, Lcom/t4game/T4gameRecharge;->getUI_CommandButtom(I)Lcom/t4game/UI_CommandButtom;

    move-result-object v0

    invoke-static {v2, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/t4game/T4gameRecharge;->getTextBox(I)Lcom/t4game/UI_TextBox;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/t4game/T4gameRecharge;->getChoiceBox(I)Lcom/t4game/UI_ChoiceBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/t4game/UI_ChoiceBox;->setChoice([Ljava/lang/String;[B)I

    goto/16 :goto_0
.end method

.method public pointer()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4gameRecharge;->onPointerQuery()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/T4gameRecharge;->onPointerRecharge()V

    goto :goto_0
.end method

.method public processChargeList_Message(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v1, v1, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/t4game/T4gameRecharge;->smstxt:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/t4game/T4gameRecharge;->smsUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/t4game/T4gameRecharge;->initRechargeUIByBin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->setView(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/t4game/T4gameRecharge;->PKId:I

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    if-lez v2, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v4, v4, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v0, p1}, Lcom/t4game/T4gameRecharge;->initRechargeUIByBin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->setView(B)V

    goto :goto_0

    :cond_3
    const-string v0, "CMCC_NEW_PLT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-lez v0, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v4, v4, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v2, p1}, Lcom/t4game/T4gameRecharge;->initRechargeUIByBin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/t4game/T4gameRecharge;->setView(B)V

    goto :goto_0

    :cond_6
    const-string v0, "BANK_TRANSFER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ONLINE_BANKING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/t4game/Util;->OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v1, v0}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processLoadingBack(B)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/t4game/T4gameRecharge;->setView(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "BANK_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->RechargeType:Ljava/lang/String;

    const-string v1, "ONLINE_BANKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-byte v2, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    invoke-direct {p0, v3}, Lcom/t4game/T4gameRecharge;->setView(B)V

    goto :goto_0
.end method

.method public processMessage(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/t4game/T4gameRecharge;->processSecretValu()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/t4game/T4gameRecharge;->processSecretAliPayResult()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/t4game/T4gameRecharge;->processRecharge_Card_Message()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/t4game/T4gameRecharge;->processRecharge_Consume_Message()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/t4game/T4gameRecharge;->processRecharge_New_Mobile_PLT_Message()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v1

    new-array v2, v0, [I

    iput-object v2, v1, Lcom/t4game/Sdk_LD;->money:[I

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/t4game/Sdk_LD;->str:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/Sdk_LD;->money:[I

    iget-object v3, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v3, v3, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    sget-object v2, Lcom/t4game/Sdk_LD;->str:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v3, v3, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/t4game/UI_Menu;

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    sget-object v1, Lcom/t4game/Sdk_LD;->str:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/t4game/T4gameRecharge;->setView(B)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x121 -> :sswitch_3
        0x122 -> :sswitch_4
        0x12b -> :sswitch_5
        0x18b -> :sswitch_0
        0x18c -> :sswitch_0
        0x21f -> :sswitch_1
        0x224 -> :sswitch_2
        0x259 -> :sswitch_6
    .end sparse-switch
.end method

.method public processRecharge_Card_Message()V
    .locals 2

    const/4 v1, 0x1

    sget-byte v0, Lcom/t4game/T4gameRecharge;->NOLOADING:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    iput-byte v1, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    const/16 v0, 0x51e

    invoke-static {v1, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    goto :goto_0
.end method

.method public processRecharge_Consume_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/T4gameRecharge;->LOADINGBACK:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_TextBox;

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/Recharge;->addmsg(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public processRecharge_New_Mobile_PLT_Message()V
    .locals 2

    const/4 v1, 0x1

    sget-byte v0, Lcom/t4game/T4gameRecharge;->NOLOADING:B

    invoke-virtual {p0, v0}, Lcom/t4game/T4gameRecharge;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    iput-byte v1, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    const/16 v0, 0x51f

    invoke-static {v1, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/T4gameRecharge;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->view_infor:Ljava/lang/String;

    goto :goto_0
.end method

.method public processSecretValu()V
    .locals 5

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/T4gameRecharge;->NOLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lj2ab/android/alipay/MobileSecurePayer;

    invoke-direct {v1}, Lj2ab/android/alipay/MobileSecurePayer;-><init>()V

    sget-object v2, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    iget-object v2, v2, Lj2ab/android/app/J2ABMIDletActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    sget-object v4, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-virtual {v1, v0, v2, v3, v4}, Lj2ab/android/alipay/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->closeProgress()V

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u652f\u4ed8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lj2ab/android/alipay/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4gameRecharge;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processServiveListMessage(BLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v1, v1, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/t4game/T4gameRecharge;->MaxInput:I

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4gameRecharge;->initQueryChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/t4game/T4gameRecharge;->processChargeList_Message(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v1, v1, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/t4game/T4gameRecharge;->MaxInput:I

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4gameRecharge;->initQueryChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processkeyEvent(I)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/T4gameRecharge;->onPressedQuery(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4gameRecharge;->screenId:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/T4gameRecharge;->onPressedRecharge(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    :cond_0
    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iput-object v1, p0, Lcom/t4game/T4gameRecharge;->worldAlertMessage:Ljava/lang/String;

    return-void
.end method

.method public sendAliPay_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/T4gameRecharge;->PKId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p5}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x221

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendAliPay_MessageAuthenticat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/t4game/T4gameRecharge;->sendAliPay_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendBuy_Coin_List_Message()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendSecretKey_AliPay_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v1

    iget v1, v1, Lcom/t4game/Sdk_LD;->pkid:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v0, v0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x220

    iget-object v2, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    iget-object v2, v2, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setLoadingState(B)V
    .locals 1

    sget-byte v0, Lcom/t4game/T4gameRecharge;->ONLOADING:B

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/GDataManager;->saving:Z

    invoke-static {}, Lcom/t4game/GDataManager;->LoadingSave()V

    :goto_0
    iput-byte p1, p0, Lcom/t4game/T4gameRecharge;->loading:B

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/GDataManager;->saving:Z

    goto :goto_0
.end method

.method public showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4gameRecharge;->attct:Lcom/t4game/Recharge;

    invoke-virtual {v0}, Lcom/t4game/Recharge;->showCanvas()V

    return-void
.end method
