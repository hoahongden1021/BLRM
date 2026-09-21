.class public final Lcom/t4game/T4game;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/IAuthenticate;
.implements Lcom/t4game/IAuthenticateForm;


# instance fields
.field private AlertMsg:Ljava/lang/String;

.field private HaveRegistProtocol:Z

.field private final Login:B

.field private PopMsg:Ljava/lang/String;

.field private final Quick:B

.field private final Quit:B

.field private RegisterProtocolURL:Ljava/lang/String;

.field private RegisterTitle:Ljava/lang/String;

.field private final Repaired:B

.field private SerList:[[Ljava/lang/String;

.field private UpdatePhoneNum:Z

.field private ac:Lcom/t4game/AuthenticateCommon;

.field private attct:Lcom/t4game/Authenticate;

.field private descriptions:[Ljava/lang/String;

.field private isGetWhiteListState:Z

.field private keyCode:I

.field private netChoice:[Ljava/lang/String;

.field private recommend_name:Ljava/lang/String;

.field private registname_:Ljava/lang/String;

.field private security_menu:[Ljava/lang/String;

.field private serverList:[[Ljava/lang/String;

.field private showAlert:B

.field private stateWithoutKey:[I

.field private tagStr:Lcom/t4game/TagString;

.field private tick:I

.field private user_info_default:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/Authenticate;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v4, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object v2, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iput-boolean v5, p0, Lcom/t4game/T4game;->isGetWhiteListState:Z

    iput v5, p0, Lcom/t4game/T4game;->tick:I

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->PopMsg:Ljava/lang/String;

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/t4game/T4game;->Quick:B

    iput-byte v5, p0, Lcom/t4game/T4game;->Login:B

    iput-byte v6, p0, Lcom/t4game/T4game;->Repaired:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/t4game/T4game;->Quit:B

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->RegisterTitle:Ljava/lang/String;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->RegisterProtocolURL:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/t4game/T4game;->HaveRegistProtocol:Z

    iput-boolean v5, p0, Lcom/t4game/T4game;->UpdatePhoneNum:Z

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->registname_:Ljava/lang/String;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/T4game;->recommend_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->tagStr:Lcom/t4game/TagString;

    iput-object v2, p0, Lcom/t4game/T4game;->netChoice:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/t4game/T4game;->keyCode:I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/t4game/T4game;->stateWithoutKey:[I

    iput-object p1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    new-instance v1, Lcom/t4game/AuthenticateCommon;

    invoke-direct {v1}, Lcom/t4game/AuthenticateCommon;-><init>()V

    iput-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    return-void

    :array_0
    .array-data 4
        0x0
        0x7
    .end array-data
.end method

.method private InitRegisterForm()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v6, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v0, p0, v1, v5, v2}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4game;->sendQuickRegistMessage()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v6, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v0, p0, v1, v5, v2}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/t4game/T4game;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/t4game/T4game;->PopMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/t4game/T4game;B)B
    .locals 0

    iput-byte p1, p0, Lcom/t4game/T4game;->showAlert:B

    return p1
.end method

.method private drawGuest(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method private drawLogin(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->drawLogin(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    :cond_0
    return-void
.end method

.method private drawMasterMenu(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->drawMasterMenu(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    :cond_0
    return-void
.end method

.method private drawNetChoice(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->netChoice:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/t4game/AuthenticateCommon;->drawOfNetChoice(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    :cond_0
    return-void
.end method

.method private drawRegister(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->RegisterTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->tagStr:Lcom/t4game/TagString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/t4game/AuthenticateCommon;->drawRegister(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Lcom/t4game/TagString;)V

    return-void
.end method

.method private drawUserCenter(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/t4game/AuthenticateCommon;->drawUserCenter(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;)V

    return-void
.end method

.method private drawWaiting(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v2, "\u4e0b\u8f7d"

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-nez v0, :cond_7

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const-string v1, "\u4e0b\u8f7d"

    const-string v1, "\u8fdb\u5165\u6e38\u620f"

    invoke-static {p1, v0, v2, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-nez v0, :cond_6

    sget-object v0, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/16 v0, 0x683

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintAlertSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const-string v1, "\u4e0b\u8f7d"

    invoke-static {p1, v0, v2, v3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->network:Lcom/t4game/TcpNetwork;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->network:Lcom/t4game/TcpNetwork;

    iget-byte v0, v0, Lcom/t4game/TcpNetwork;->tcpState:B

    sget-byte v1, Lcom/t4game/TcpNetwork;->TCP_NOTCONNECTION_ERR_STATE:B

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->network:Lcom/t4game/TcpNetwork;

    iget-byte v0, v0, Lcom/t4game/TcpNetwork;->tcpState:B

    sget-byte v1, Lcom/t4game/TcpNetwork;->TCP_OUTPUT_ERR_STATE:B

    if-ne v0, v1, :cond_2

    :cond_9
    const-string v0, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private getPointerPadKey()I
    .locals 3

    const/4 v2, -0x6

    const/4 v1, -0x7

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/T4game;->keyCode:I

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-direct {p0, v0}, Lcom/t4game/T4game;->isBelongWithoutKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iput v2, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/t4game/T4game;->keyCode:I

    return v0

    :cond_1
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-direct {p0, v0}, Lcom/t4game/T4game;->isBelongWithoutKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_0
.end method

.method private isBelongWithoutKey(I)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/t4game/T4game;->stateWithoutKey:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/T4game;->stateWithoutKey:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private onPointerMasterMenuKey(II)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/AuthenticateCommon;->onPointerMasterMenu(II)V

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x5

    iput v0, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_0
    return-void
.end method

.method private onPointerNetChoice()V
    .locals 2

    const/4 v1, -0x5

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_0
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x7

    iput v0, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0}, Lcom/t4game/AuthenticateCommon;->onPointerNetChoice()V

    sget v0, Lcom/t4game/Defaults;->preFouce:I

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    sput v0, Lcom/t4game/Defaults;->preFouce:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const-string v0, "\u8054\u7f51\u65b9\u5f0f\u8bbe\u7f6e\u6210\u529f\uff0c\u662f\u5426\u7ee7\u7eed"

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private onPointerUserCenter(II)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x5

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v0, v0, Lcom/t4game/AuthenticateCommon;->point_Y:I

    add-int/lit8 v1, v0, 0xa

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v0, v0, Lcom/t4game/AuthenticateCommon;->point_x:I

    add-int/lit8 v2, v0, 0x5

    add-int/lit8 v3, v2, 0x64

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-object v0, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    array-length v5, v0

    const/4 v0, 0x4

    filled-new-array {v5, v0}, [I

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v6, v11

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v0, v6

    aput v2, v7, v11

    aget-object v7, v0, v6

    const/4 v8, 0x1

    mul-int v9, v4, v6

    add-int/2addr v9, v1

    aput v9, v7, v8

    aget-object v7, v0, v6

    const/4 v8, 0x2

    aput v3, v7, v8

    aget-object v7, v0, v6

    const/4 v8, 0x3

    add-int/lit8 v9, v6, 0x1

    mul-int/2addr v9, v4

    add-int/2addr v9, v1

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1, p1, p2, v0}, Lcom/t4game/AuthenticateCommon;->onPointerSecurity(II[[I)V

    sget v0, Lcom/t4game/Defaults;->preFouce:I

    if-ne v0, v10, :cond_1

    iput v10, p0, Lcom/t4game/T4game;->keyCode:I

    const/4 v0, -0x1

    sput v0, Lcom/t4game/Defaults;->preFouce:I

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    aget-object v1, v1, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x28

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    goto :goto_1
.end method

.method private onPressedGuest(I)V
    .locals 0

    return-void
.end method

.method private onPressedLogin(I)V
    .locals 7

    const/4 v6, -0x5

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-gez v0, :cond_0

    sget-boolean v0, Lcom/t4game/Defaults;->showMsg:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v5, v3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->onPressedLogin(I)B

    move-result v0

    if-ltz v0, :cond_0

    if-ne v0, v3, :cond_4

    if-ne p1, v6, :cond_0

    sget-boolean v0, Lcom/t4game/Defaults;->remenber:Z

    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/t4game/Defaults;->remenber:Z

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    const/4 v1, -0x6

    if-eq p1, v1, :cond_5

    if-ne p1, v6, :cond_0

    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, v4, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v2, v3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v2, -0xc

    const-string v3, "\u7528\u6237\u767b\u5f55"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v5}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1, v4}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    sput-boolean v4, Lcom/t4game/Defaults;->showMsg:Z

    const-string v0, "\u8bf7\u8f93\u5165\u7528\u6237\u540d\u548c\u5bc6\u7801"

    iput-object v0, p0, Lcom/t4game/T4game;->PopMsg:Ljava/lang/String;

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aput-object v0, v2, v5

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-direct {p0}, Lcom/t4game/T4game;->sendLoginMessage()Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/t4game/T4game;->sendRegistProtocolMessage()Z

    goto :goto_0

    :cond_b
    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/t4game/T4game;->InitAccountSecurity()V

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto/16 :goto_0

    :cond_c
    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v2, v3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v2, -0xd

    const-string v3, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const-string v0, "\u4fee\u590d\u4e2d\u8bf7\u7a0d\u5019..."

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    invoke-virtual {v0}, Lcom/t4game/Authenticate;->FlushScreen()V

    new-instance v0, Lcom/t4game/T4game$2;

    invoke-direct {v0, p0}, Lcom/t4game/T4game$2;-><init>(Lcom/t4game/T4game;)V

    invoke-virtual {v0}, Lcom/t4game/T4game$2;->start()V

    goto/16 :goto_0
.end method

.method private onPressedMasterMenu(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-byte v2, Lcom/t4game/Defaults;->askRegist:B

    if-ne v2, v4, :cond_2

    const/4 v1, -0x6

    if-ne p1, v1, :cond_0

    sput-byte v3, Lcom/t4game/Defaults;->askRegist:B

    invoke-direct {p0}, Lcom/t4game/T4game;->sendQuickRegistProtocolMessage()Z

    sput-boolean v4, Lcom/t4game/Defaults;->isQuickRegist:Z

    :cond_0
    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    sput-byte v3, Lcom/t4game/Defaults;->askRegist:B

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1, v3, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    if-gez v2, :cond_1

    sget-boolean v2, Lcom/t4game/Defaults;->showMsg:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v2, p1}, Lcom/t4game/AuthenticateCommon;->onPressedMaseterMenu(I)B

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1, v3, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_5

    sget-boolean v1, Lcom/t4game/Defaults;->isAllowUserQuickLogin:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/t4game/T4game;->sendUserQuickLoginMessage()Z

    sput-boolean v4, Lcom/t4game/Defaults;->isUserQuickLogin:Z

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/t4game/T4game;->sendQuickRegistProtocolMessage()Z

    sput-boolean v4, Lcom/t4game/Defaults;->isQuickRegist:Z

    goto :goto_0

    :cond_5
    if-ne v2, v3, :cond_6

    const-string v1, "\u4fee\u590d\u4e2d\u8bf7\u7a0d\u5019..."

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    invoke-virtual {v1}, Lcom/t4game/Authenticate;->FlushScreen()V

    new-instance v1, Lcom/t4game/T4game$1;

    invoke-direct {v1, p0}, Lcom/t4game/T4game$1;-><init>(Lcom/t4game/T4game;)V

    invoke-virtual {v1}, Lcom/t4game/T4game$1;->start()V

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    move-object p0, v0

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v4}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onPressedNetChoice(I)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->netChoice:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/t4game/AuthenticateCommon;->getCommonMenuIndex(II)B

    move-result v0

    :goto_0
    const/4 v1, -0x6

    if-eq p1, v1, :cond_0

    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    :cond_0
    if-ltz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ne v0, v4, :cond_2

    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "\u8054\u7f51\u65b9\u5f0f\u8bbe\u7f6e\u6210\u529f\uff0c\u662f\u5426\u7ee7\u7eed"

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v4, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_1

    :cond_3
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-boolean v0, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v3, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-boolean v3, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private onPressedRegister(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->tagStr:Lcom/t4game/TagString;

    invoke-virtual {v1}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/t4game/AuthenticateCommon;->onPressedRegister(II)Z

    move-result v0

    const/4 v1, -0x6

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4game;->InitRegisterForm()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x7

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x30

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4game;->RegisterProtocolURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/Util;->OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPressedWaiting(I)V
    .locals 7

    const/4 v6, -0x6

    const/4 v5, -0x7

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v1, -0x9

    if-ne v0, v1, :cond_d

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    if-eq p1, v6, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_6

    :cond_2
    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/Util;->OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/GameMIDlet;->quitApp()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-ne v0, v3, :cond_5

    if-eq p1, v6, :cond_4

    const/4 v0, -0x5

    if-ne p1, v0, :cond_5

    :cond_4
    sget v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    sget v1, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    if-lt v0, v1, :cond_5

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/GameMIDlet;->quitApp()V

    :cond_5
    return-void

    :cond_6
    if-ne p1, v5, :cond_3

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-nez v0, :cond_c

    if-eq p1, v6, :cond_8

    const/4 v0, -0x5

    if-ne p1, v0, :cond_3

    :cond_8
    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    sget-object v0, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-boolean v0, Lcom/t4game/Defaults;->isQuickRegist:Z

    if-eqz v0, :cond_a

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Authenticate;->BackRole([[Ljava/lang/String;[[Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/Util;->OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/GameMIDlet;->quitApp()V

    goto :goto_0

    :cond_c
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-ne p1, v5, :cond_3

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto/16 :goto_0

    :cond_d
    if-ne p1, v5, :cond_3

    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iput-byte v3, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/16 v1, -0xb

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/4 v1, -0x2

    if-gt v0, v1, :cond_e

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/16 v1, -0xd

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-boolean v0, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v4, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-boolean v4, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, v4, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto/16 :goto_0
.end method

.method private processBindPhoneMessage()V
    .locals 0

    return-void
.end method

.method private processChangePWMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processFrozenAccountMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processGuestQuickLoginMessage()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    const-string v1, ""

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/t4game/StartGame;->getInstance()Lcom/t4game/StartGame;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/t4game/StartGame;->relink(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v1, 0x2

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/T4game;->showAlert:B

    invoke-direct {p0}, Lcom/t4game/T4game;->processServerList()V

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_0

    :cond_2
    iput-byte v4, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_0
.end method

.method private processIdentityBindMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processLoginMessage()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    const-string v1, ""

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/t4game/T4game;->processServerList()V

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/t4game/Defaults;->NotFirstInGame:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/T4game;->sendMyPlatformMessage()Z

    :cond_1
    if-ne v3, v6, :cond_2

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v1, 0x2

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/T4game;->processServerList()V

    iput-byte v4, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_0

    :cond_4
    if-ne v3, v4, :cond_5

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_0

    :cond_5
    if-nez v3, :cond_0

    iput-byte v6, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_0
.end method

.method private processMailBindMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processMailUnbindMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processMobileTelephoneBindMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processMobileTelephoneUnbindMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processMyPlatformMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    return-void
.end method

.method private processPasswordGetBackMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processPhoneBringMessage()V
    .locals 0

    return-void
.end method

.method private processQuickRegistMessage()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    sput-boolean v2, Lcom/t4game/AuthenticateCommon;->isReading:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x1

    const-string v3, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v3

    goto :goto_0
.end method

.method private processRegistGetServerCtrlFlagMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    sput-byte v0, Lcom/t4game/Defaults;->registSeverCtrlFlog:B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    sget-boolean v0, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/T4game;->InitRegisterForm()V

    :cond_0
    return-void
.end method

.method private processRegistMessage()V
    .locals 7

    const/16 v6, 0x7f

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "\n"

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const-string v0, ""

    sput-object v0, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    if-ne v1, v4, :cond_3

    sget-byte v0, Lcom/t4game/Defaults;->RegistAgain:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->RegistAgain:B

    sget-byte v0, Lcom/t4game/Defaults;->RegistAgain:B

    if-le v0, v6, :cond_0

    sput-byte v6, Lcom/t4game/Defaults;->RegistAgain:B

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->registname_:Ljava/lang/String;

    sput-object v0, Lcom/t4game/Defaults;->RegistName:Ljava/lang/String;

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    invoke-direct {p0}, Lcom/t4game/T4game;->processServerList()V

    sget-boolean v0, Lcom/t4game/Defaults;->isQuickRegist:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u606d\u559c\u60a8\u6ce8\u518c\u6210\u529f\uff01\n\u8d26\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5bc6\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e3a\u4fdd\u8bc1\u5e10\u53f7\u5b89\u5168\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5c3d\u5feb\u4fee\u6539\u5bc6\u7801\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u4e2d\u952e\u8fdb\u5165\u6e38\u620f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    :goto_0
    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u606d\u559c\u60a8\u6ce8\u518c\u6210\u529f\uff01\n\u8d26\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5bc6\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e3a\u4fdd\u8bc1\u5e10\u53f7\u5b89\u5168\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u9ad8\u5bc6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u4e2d\u952e\u8fdb\u5165\u6e38\u620f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/T4game;->processServerList()V

    iput-byte v5, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->recommend_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->recommend_name:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    goto/16 :goto_1

    :cond_6
    if-nez v1, :cond_1

    iput-byte v2, p0, Lcom/t4game/T4game;->showAlert:B

    goto/16 :goto_1
.end method

.method private processRegistProtocolMessage()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->RegisterTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    sput-boolean v3, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    :goto_0
    new-instance v1, Lcom/t4game/TagString;

    const v2, 0xffffff

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    int-to-short v3, v3

    invoke-direct {v1, v0, v2, v3}, Lcom/t4game/TagString;-><init>(Ljava/lang/String;IS)V

    iput-object v1, p0, Lcom/t4game/T4game;->tagStr:Lcom/t4game/TagString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->RegisterProtocolURL:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/t4game/T4game;->HaveRegistProtocol:Z

    invoke-direct {p0}, Lcom/t4game/T4game;->sendRegistGetServerCtrlFlagMessage()Z

    return-void

    :cond_0
    sput-boolean v5, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v1, v5, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private processServerList()V
    .locals 10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v0

    sput-boolean v0, Lcom/t4game/Defaults;->userPhoneBind:Z

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-boolean v0, Lcom/t4game/Defaults;->remenber:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    :goto_0
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "\u901a\u7545"

    aput-object v0, v1, v4

    const-string v0, "\u706b\u7206"

    aput-object v0, v1, v5

    const-string v0, "\u7e41\u5fd9"

    aput-object v0, v1, v6

    const-string v0, "\u6ee1\u5458"

    aput-object v0, v1, v7

    const-string v0, "\u7ef4\u62a4"

    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    const/4 v2, 0x6

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    move v0, v4

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v2, v2, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iget-object v3, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v3, v3, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v4, v4, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v5, v5, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    iget-object v6, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v6, v6, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    iget-object v7, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v7, v7, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v7}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v8, v8, v0

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v8, 0x1

    aput-object v3, v2, v8

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v8, 0x2

    aput-object v4, v2, v8

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v4, 0x3

    aget-object v8, v1, v5

    aput-object v8, v2, v4

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v4, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    iget-object v2, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v4, 0x5

    aput-object v7, v2, v4

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget-object v4, v1, v5

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aput-object v0, v2, v4

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aput-object v1, v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method private processSetSecurityPWMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processUnbindPhoneMessage()V
    .locals 0

    return-void
.end method

.method private processUnfrozenAccountMessage()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    return-void
.end method

.method private processUserQuickLoginMessage()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    const-string v1, ""

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    if-nez v4, :cond_1

    sput-boolean v5, Lcom/t4game/Defaults;->isUserQuickLogin:Z

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v7, p0, Lcom/t4game/T4game;->showAlert:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v4, v6, :cond_2

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v8, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/t4game/Defaults;->userPhoneBind:Z

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v2, v2, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    sput-byte v1, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/t4game/StartGame;->getInstance()Lcom/t4game/StartGame;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/t4game/StartGame;->relink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    sput v1, Lcom/t4game/Defaults;->User_Quick_Login_Role_ID:I

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget v2, Lcom/t4game/Defaults;->User_Quick_Login_Role_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_3

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/t4game/Defaults;->userPhoneBind:Z

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v3, v3, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    sput-byte v1, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/t4game/StartGame;->getInstance()Lcom/t4game/StartGame;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/t4game/StartGame;->relink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    sput v1, Lcom/t4game/Defaults;->User_Quick_Login_Role_ID:I

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget v3, Lcom/t4game/Defaults;->User_Quick_Login_Role_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v5}, Lcom/t4game/Authenticate;->ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    if-ne v4, v8, :cond_0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/T4game;->showAlert:B

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapUpdateUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private processUserSimplifiedQuickRegister()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->RegisterTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    sput-boolean v2, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/T4game;->RegisterProtocolURL:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/t4game/T4game;->HaveRegistProtocol:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    sput-byte v0, Lcom/t4game/Defaults;->registSeverCtrlFlog:B

    sput-boolean v2, Lcom/t4game/AuthenticateCommon;->isReading:Z

    sput-boolean v2, Lcom/t4game/AuthenticateCommon;->isReading:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x1

    const-string v3, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    sput-boolean v3, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v3, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v2

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    const-string v1, ""

    aput-object v4, v0, v3

    goto :goto_1
.end method

.method private sendBindPhoneMessage()V
    .locals 0

    return-void
.end method

.method private sendChangePWMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendFrozenAccountMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendGuestQuickLoginMessage()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->CHANNELS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-boolean v1, Lcom/t4game/Defaults;->isKEmulator:Z

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendIdentityBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p5}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p6}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendLoginMessage()Z
    .locals 5

    const/4 v3, 0x1

    const-string v4, "null"

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->CHANNELS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-boolean v1, Lcom/t4game/Defaults;->isKEmulator:Z

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMailBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendMailUnbindMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendMobileTelephoneBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendMobileTelephoneUnbindMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendMyPlatformMessage()Z
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-boolean v1, p0, Lcom/t4game/T4game;->UpdatePhoneNum:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    iget-boolean v0, p0, Lcom/t4game/T4game;->UpdatePhoneNum:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/t4game/T4game;->UpdatePhoneNum:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    invoke-static {}, Lcom/t4game/Defaults;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xe6b9aa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendPasswordGetBackMessage(Ljava/lang/String;B)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendPhoneBringMessage()V
    .locals 0

    return-void
.end method

.method private sendQuickRegistMessage()Z
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendQuickRegistProtocolMessage()Z
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendRegistGetServerCtrlFlagMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendRegistMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v2, "null"

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-boolean v1, Lcom/t4game/Defaults;->isKEmulator:Z

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-byte v1, Lcom/t4game/Defaults;->RegistAgain:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    sget-byte v0, Lcom/t4game/Defaults;->RegistAgain:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->RegistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->CHANNELS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/t4game/T4game;->registname_:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p5}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRegistProtocolMessage()Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/t4game/T4game;->HaveRegistProtocol:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/t4game/AuthenticateCommon;->isReading:Z

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/t4game/T4game;->InitRegisterForm()V

    goto :goto_1
.end method

.method private sendSetSecurityPWMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendUnbindPhoneMessage()V
    .locals 0

    return-void
.end method

.method private sendUnfrozenAccountMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x21

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0
.end method

.method private sendUserQuickLoginMessage()Z
    .locals 5

    const/4 v3, 0x1

    const-string v4, "null"

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->CHANNELS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-boolean v1, Lcom/t4game/Defaults;->isKEmulator:Z

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, v1, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/T4game;->send(B[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public InitAccountSecurity()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-byte v4, v0, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-byte v3, v0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5bc6\u7801\u627e\u56de"

    aput-object v1, v0, v3

    const-string v1, "\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801"

    aput-object v1, v0, v5

    const-string v1, "\u4fee\u6539\u9ad8\u7ea7\u5bc6\u7801"

    aput-object v1, v0, v6

    const-string v1, "\u624b\u673a\u7ed1\u5b9a"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u624b\u673a\u89e3\u7ed1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u90ae\u7bb1\u7ed1\u5b9a"

    aput-object v2, v0, v1

    const-string v1, "\u90ae\u7bb1\u89e3\u7ed1"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "\u8bc1\u4ef6\u7ed1\u5b9a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u51bb\u7ed3\u8d26\u53f7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u8d26\u53f7\u89e3\u51bb"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5982\u679c\u60a8\u5fd8\u8bb0\u4e86\u8d26\u53f7\u7684\u5bc6\u7801\uff0c\u53ef\u4ee5\u6267\u884c\u201c\u5bc6\u7801\u627e\u56de\u201d\u64cd\u4f5c\uff0c\u627e\u56de\u81ea\u5df1\u7684\u5bc6\u7801\uff0c\u8fdb\u884c\u8be5\u64cd\u4f5c\u9700\u8981\u9009\u62e9\u8d26\u53f7\u7684\u627e\u56de\u65b9\u5f0f\u3002\u5982\u679c\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\u6216\u8005\u90ae\u7bb1\uff0c\u8bf7\u5148\u53bb\u4e2a\u4eba\u4e2d\u5fc3\u5f00\u542f\u76f8\u5e94\u529f\u80fd\uff1b"

    aput-object v1, v0, v3

    const-string v1, "\u9ad8\u7ea7\u5bc6\u7801\u662f\u75316-16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\uff0c\u9ad8\u7ea7\u5bc6\u7801\u53ef\u4ee5\u7ed1\u5b9a\u624b\u673a\u3001\u7ed1\u5b9a\u90ae\u7bb1\u3001\u89e3\u9664\u624b\u673a\u7ed1\u5b9a\u3001\u89e3\u9664\u90ae\u7bb1\u7ed1\u5b9a\uff1b\u5728\u6e38\u620f\u4e2d\u4e5f\u53ef\u4ee5\u6253\u5f00\u5b89\u5168\u9501\u6765\u4fdd\u62a4\u81ea\u5df1\u7684\u8d26\u53f7\uff1b"

    aput-object v1, v0, v5

    const-string v1, "\u6b64\u64cd\u4f5c\u53ef\u4ee5\u4fee\u6539\u60a8\u7684\u9ad8\u7ea7\u5bc6\u7801\uff0c\u4fee\u6539\u9ad8\u7ea7\u5bc6\u7801\u9700\u8981\u4f60\u63d0\u4f9b\u65e7\u7684\u9ad8\u7ea7\u5bc6\u7801\uff1b\u82e5\u662f\u60a8\u5fd8\u8bb0\u4e86\u81ea\u5df1\u7684\u9ad8\u7ea7\u5bc6\u7801\uff0c\u5219\u53ef\u4ee5\u4f20\u771f\u8d26\u53f7\u7ed1\u5b9a\u7684\u8bc1\u4ef6\u590d\u5370\u4ef6\u7ed9\u5ba2\u670d\u8fdb\u884c\u91cd\u7f6e\uff1b"

    aput-object v1, v0, v6

    const-string v1, "\u5f53\u60a8\u7684\u8d26\u53f7\u7ed1\u5b9a\u624b\u673a\u540e\uff0c\u53ef\u4ee5\u4f7f\u7528\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\u627e\u56de\u60a8\u7684\u8d26\u53f7\u5bc6\u7801\uff1b\u624b\u673a\u7ed1\u5b9a\u9700\u8981\u8f93\u5165\u60a8\u7684\u9ad8\u7ea7\u5bc6\u7801\uff0c\u5982\u679c\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\uff0c\u8bf7\u4f7f\u7528\u4e2a\u4eba\u4e2d\u5fc3\u7684\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\u529f\u80fd\u5148\u884c\u8bbe\u7f6e\uff1b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u624b\u673a\u89e3\u7ed1\u53ef\u4ee5\u89e3\u9664\u4f60\u5df2\u7ecf\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\uff0c\u624b\u673a\u89e3\u7ed1\u9700\u8981\u4f60\u8f93\u5165\u4f60\u7684\u8d26\u53f7\u4ee5\u53ca\u8be5\u8d26\u53f7\u7684\u9ad8\u7ea7\u5bc6\u7801\u3002"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5f53\u60a8\u8d26\u53f7\u7ed1\u5b9a\u90ae\u7bb1\u540e\uff0c\u53ef\u4ee5\u4f7f\u7528\u7ed1\u5b9a\u7684\u90ae\u7bb1\u627e\u56de\u60a8\u7684\u8d26\u53f7\u5bc6\u7801\u3002\u7ed1\u5b9a\u9700\u8981\u8d26\u53f7\u548c\u9ad8\u7ea7\u5bc6\u7801\u3002\u5982\u679c\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\uff0c\u8bf7\u4f7f\u7528\u4e2a\u4eba\u4e2d\u5fc3\u7684\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\u529f\u80fd\u5148\u884c\u8bbe\u7f6e\uff1b"

    aput-object v2, v0, v1

    const-string v1, "\u90ae\u7bb1\u89e3\u7ed1\u53ef\u4ee5\u89e3\u9664\u4f60\u5df2\u7ecf\u7ed1\u5b9a\u7684\u90ae\u7bb1\uff0c\u90ae\u7bb1\u89e3\u7ed1\u9700\u8981\u4f60\u63d0\u4f9b\u89e3\u7ed1\u7684\u8d26\u53f7\u4ee5\u53ca\u8be5\u8d26\u53f7\u7684\u9ad8\u7ea7\u5bc6\u7801\u3002"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "\u8bc1\u4ef6\u7ed1\u5b9a\u9700\u8981\u60a8\u63d0\u4f9b\u81ea\u5df1\u6709\u6548\u7684\u8bc1\u4ef6\u53f7\u7801\u548c\u9700\u8981\u7ed1\u5b9a\u7684\u8d26\u53f7\u3001\u5bc6\u7801\u3001\u9ad8\u7ea7\u5bc6\u7801\u3002\u5982\u679c\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\uff0c\u8bf7\u4f7f\u7528\u4e2a\u4eba\u4e2d\u5fc3\u7684\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\u529f\u80fd\u5148\u884c\u8bbe\u7f6e\uff1b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6b64\u64cd\u4f5c\u4f1a\u51bb\u7ed3\u60a8\u7684\u8d26\u53f7\uff0c\u4e00\u65e6\u8d26\u53f7\u51bb\u7ed3\uff0c\u60a8\u5c06\u4e0d\u80fd\u5bf9\u8d26\u53f7\u8fdb\u884c\u5176\u4ed6\u64cd\u4f5c\u3002\u8bf7\u614e\u7528\uff1b\u51bb\u7ed3\u8d26\u53f7\u9700\u8981\u60a8\u8f93\u5165\u8d26\u53f7\u548c\u8bc1\u4ef6\u53f7\uff1b\u5982\u679c\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\uff0c\u8bf7\u4f7f\u7528\u4e2a\u4eba\u4e2d\u5fc3\u7684\u8bbe\u7f6e\u9ad8\u7ea7\u5bc6\u7801\u529f\u80fd\u5148\u884c\u8bbe\u7f6e\uff1b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5f53\u60a8\u7684\u8d26\u53f7\u5904\u4e8e\u51bb\u7ed3\u72b6\u6001\u4e2d\uff0c\u4f60\u53ef\u4ee5\u8f93\u5165\u81ea\u5df1\u7684\u8d26\u53f7\u548c\u7ed1\u5b9a\u7684\u8bc1\u4ef6\u53f7\u6765\u5bf9\u81ea\u5df1\u7684\u8d26\u53f7\u8fdb\u884c\u89e3\u51bb\u3002"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    aget-object v1, v1, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x28

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    goto :goto_0
.end method

.method public InitDefaultState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-boolean v1, v0, Lcom/t4game/AuthenticateCommon;->isSetDefualsStr:Z

    sget-boolean v0, Lcom/t4game/AuthenticateCommon;->DefaultState:Z

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/t4game/AuthenticateCommon;->DefaultState:Z

    sget-byte v0, Lcom/t4game/Defaults;->getWhiteList:B

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/Defaults;->getWhiteList:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->getWhiteList:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_0
    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x62

    sput-byte v0, Lcom/t4game/Defaults;->getWhiteList:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_1
.end method

.method public LoginGame()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    const/16 v2, -0x9

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    invoke-direct {p0}, Lcom/t4game/T4game;->sendLoginMessage()Z

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/T4game;->tick:I

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintReading(ILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->PopMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->PaintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/t4game/T4game;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/T4game;->tick:I

    iget v0, p0, Lcom/t4game/T4game;->tick:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/T4game;->tick:I

    :cond_2
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawMasterMenu(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawRegister(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawLogin(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawGuest(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->drawHelp(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->drawAbout(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawWaiting(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawUserCenter(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->drawNetChoice(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getSendBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    return-object v0
.end method

.method public isNoTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/T4game;->isGetWhiteListState:Z

    return v0
.end method

.method public keyPressed(I)V
    .locals 1

    sget-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->screenId:B

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedMasterMenu(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedRegister(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedLogin(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedGuest(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->onPressedHelp(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1}, Lcom/t4game/AuthenticateCommon;->onPressedAbout(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedWaiting(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/t4game/T4game;->onPressedUserCenter(I)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/t4game/T4game;->onPressedNetChoice(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onPointerLogin(II)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/AuthenticateCommon;->onPointerLogin(II)B

    move-result v0

    sget-byte v1, Lcom/t4game/GameUi;->actionType:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x5

    iput v0, p0, Lcom/t4game/T4game;->keyCode:I

    :cond_0
    return-void
.end method

.method public onPointerWaiting(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x7

    const/4 v2, -0x6

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PointerUtil.isPointerLeftAlertKey()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(PointerUtil.isPointerRightAlertKey()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    if-eq v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-nez v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-nez v0, :cond_4

    invoke-static {v5}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/t4game/T4game;->keyPressed(I)V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    if-eq v0, v4, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-nez v0, :cond_11

    :cond_6
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    invoke-virtual {p0, v2}, Lcom/t4game/T4game;->keyPressed(I)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-ne v0, v4, :cond_a

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p0, v2}, Lcom/t4game/T4game;->keyPressed(I)V

    :cond_a
    return-void

    :cond_b
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_c
    invoke-virtual {p0, v3}, Lcom/t4game/T4game;->keyPressed(I)V

    goto :goto_0

    :cond_d
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-nez v0, :cond_f

    invoke-static {v5}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_e
    invoke-virtual {p0, v2}, Lcom/t4game/T4game;->keyPressed(I)V

    goto :goto_0

    :cond_f
    iget-byte v0, p0, Lcom/t4game/T4game;->showAlert:B

    if-ne v0, v5, :cond_8

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_10
    invoke-virtual {p0, v3}, Lcom/t4game/T4game;->keyPressed(I)V

    goto :goto_0

    :cond_11
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_12
    invoke-virtual {p0, v3}, Lcom/t4game/T4game;->keyPressed(I)V

    goto/16 :goto_0
.end method

.method public onPressedUserCenter(I)V
    .locals 8

    const/4 v7, -0x6

    const/4 v6, -0x7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v0, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v0, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    goto :goto_0

    :cond_2
    if-eq p1, v7, :cond_3

    const/4 v0, -0x5

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v2, -0x9

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v2, -0xa

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x4

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x5

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0, p0, v1, v7, v2}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, p0, v1, v6, v2}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v2, -0x8

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v2, -0xb

    iget-object v3, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/t4game/Authenticate;->showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v6, :cond_5

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object v2, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object v2, v0, Lcom/t4game/AuthenticateCommon;->descriptions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-byte v5, v0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x50

    sub-int/2addr v0, v1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, p1, v2}, Lcom/t4game/AuthenticateCommon;->getCommonMenuIndex(II)B

    move-result v1

    iput-byte v1, v0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    aget-object v1, v1, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x28

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, v1, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public pointer(II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/16 v1, -0x3e8

    sget-boolean v0, Lcom/t4game/AuthenticateCommon;->isReading:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/t4game/T4game;->getPointerPadKey()I

    iget v0, p0, Lcom/t4game/T4game;->keyCode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/T4game;->keyCode:I

    invoke-virtual {p0, v0}, Lcom/t4game/T4game;->keyPressed(I)V

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/t4game/T4game;->keyCode:I

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/t4game/T4game;->keyCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/T4game;->keyCode:I

    invoke-virtual {p0, v0}, Lcom/t4game/T4game;->keyPressed(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->onPointerMasterMenuKey(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/t4game/T4game;->onPointerLogin(II)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerUpArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerDownArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/AuthenticateCommon;->onPointerHelp(II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/AuthenticateCommon;->onPointerAbout(II)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/T4game;->onPointerNetChoice()V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerUpArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v3, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerDownArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/t4game/T4game;->keyCode:I

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->onPointerUserCenter(II)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/t4game/T4game;->onPointerWaiting(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public processMessage(B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/T4game;->processLoginMessage()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/T4game;->processRegistMessage()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/T4game;->processBindPhoneMessage()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/T4game;->processUnbindPhoneMessage()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/T4game;->processPhoneBringMessage()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/T4game;->processGuestQuickLoginMessage()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/t4game/T4game;->processQuickRegistMessage()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/t4game/T4game;->processChangePWMessage()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/t4game/T4game;->processSetSecurityPWMessage()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/t4game/T4game;->processFrozenAccountMessage()V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/t4game/T4game;->processUserQuickLoginMessage()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/t4game/T4game;->processUserSimplifiedQuickRegister()V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/t4game/T4game;->processMyPlatformMessage()V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0}, Lcom/t4game/T4game;->processPasswordGetBackMessage()V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0}, Lcom/t4game/T4game;->processMobileTelephoneBindMessage()V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0}, Lcom/t4game/T4game;->processMobileTelephoneUnbindMessage()V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0}, Lcom/t4game/T4game;->processMailBindMessage()V

    goto :goto_0

    :pswitch_12
    invoke-direct {p0}, Lcom/t4game/T4game;->processMailUnbindMessage()V

    goto :goto_0

    :pswitch_13
    invoke-direct {p0}, Lcom/t4game/T4game;->processIdentityBindMessage()V

    goto :goto_0

    :pswitch_14
    invoke-direct {p0}, Lcom/t4game/T4game;->processRegistProtocolMessage()V

    goto :goto_0

    :pswitch_15
    invoke-direct {p0}, Lcom/t4game/T4game;->processUnfrozenAccountMessage()V

    goto :goto_0

    :pswitch_16
    invoke-direct {p0}, Lcom/t4game/T4game;->processRegistGetServerCtrlFlagMessage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x32
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/T4game;->RegisterProtocolURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->RegisterTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->AlertMsg:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->PopMsg:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/T4game;->serverList:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/T4game;->SerList:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->registname_:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->recommend_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->tagStr:Lcom/t4game/TagString;

    iput-object v2, p0, Lcom/t4game/T4game;->netChoice:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->user_info_default:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->descriptions:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/T4game;->security_menu:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1}, Lcom/t4game/AuthenticateCommon;->release()V

    iput-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    return-void
.end method

.method public send(B[B)Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    iget-object v0, v0, Lcom/t4game/Authenticate;->network:Lcom/t4game/TcpNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setAccountFrozen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->sendFrozenAccountMessage(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setAccountUnfreeze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->sendUnfrozenAccountMessage(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setIdentityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p6}, Lcom/t4game/T4game;->sendIdentityBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iput-boolean v1, v0, Lcom/t4game/AuthenticateCommon;->isSetDefualsStr:Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setMailBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/t4game/T4game;->sendMailBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setMailSlacking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->sendMailUnbindMessage(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setModifyPassWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4game/T4game;->sendChangePWMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setModifySercurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4game/T4game;->sendChangePWMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setPhoneBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/t4game/T4game;->sendMobileTelephoneBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setPhoneSlacking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->sendMobileTelephoneUnbindMessage(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setSeekPassWord(Ljava/lang/String;B)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/t4game/T4game;->sendPasswordGetBackMessage(Ljava/lang/String;B)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setSetSecurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/t4game/T4game;->sendSetSecurityPWMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public setUserRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v0, v0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct/range {p0 .. p5}, Lcom/t4game/T4game;->sendRegistMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/T4game;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v2, v2, Lcom/t4game/AuthenticateCommon;->screenId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    return-void
.end method

.method public showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/T4game;->attct:Lcom/t4game/Authenticate;

    invoke-virtual {v0}, Lcom/t4game/Authenticate;->showCanvas()V

    return-void
.end method
