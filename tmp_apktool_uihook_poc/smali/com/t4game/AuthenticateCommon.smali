.class public final Lcom/t4game/AuthenticateCommon;
.super Ljava/lang/Object;


# static fields
.field public static final About:B = 0x6t

.field public static DefaultState:Z = false

.field public static final Form:B = 0x8t

.field public static final Guest:B = 0x3t

.field public static final Help:B = 0x5t

.field public static final Login:B = 0x2t

.field public static final MasterMenu:B = 0x0t

.field public static final NetChoice:B = 0xat

.field public static final QuickLogin:B = 0x4t

.field public static final Register:B = 0x1t

.field public static final USER_REGIST:B = 0xbt

.field public static final UserCenter:B = 0x9t

.field public static final Waiting:B = 0x7t

.field public static WaitingMsg:Ljava/lang/String;

.field public static isReading:Z


# instance fields
.field private MasterMenuIndex:B

.field private final VersionWidth:B

.field private aboutPage:[[Ljava/lang/String;

.field private account:Ljavax/microedition/lcdui/Image;

.field private account_h:I

.field private account_w:I

.field private boolx2:Z

.field private boolx3:Z

.field private boolx4:Z

.field private boolxWater:Z

.field private commonMenuIndex:B

.field private curPage:I

.field public description_current:[Ljava/lang/String;

.field public descriptions:[Ljava/lang/String;

.field ff:I

.field public formType:B

.field public fromScreenId:B

.field private heightOfItemLeftTop:I

.field private helpPage:I

.field private imgBottonImage:[Ljavax/microedition/lcdui/Image;

.field private imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

.field private imgClouds:Ljavax/microedition/lcdui/Image;

.field private imgMainMenuFontBright:Ljavax/microedition/lcdui/Image;

.field private imgMainMenuFontNormal:Ljavax/microedition/lcdui/Image;

.field private imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

.field private imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

.field private img_Main_BG:Ljavax/microedition/lcdui/Image;

.field private intro:Ljavax/microedition/lcdui/Image;

.field private intro_h:I

.field private intro_w:I

.field public isSetDefualsStr:Z

.field private isWapSelect:Z

.field private lastTime:J

.field public lines_of_security:B

.field private logging_in_b:Ljavax/microedition/lcdui/Image;

.field private logging_in_b_h:I

.field private logging_in_b_w:I

.field private logging_in_y:Ljavax/microedition/lcdui/Image;

.field private logging_in_y_h:I

.field private logging_in_y_w:I

.field private manual_reg:Ljavax/microedition/lcdui/Image;

.field private manual_reg_h:I

.field private manual_reg_w:I

.field private passward_confirm:Ljavax/microedition/lcdui/Image;

.field private passward_confirm_h:I

.field private passward_confirm_w:I

.field private password:Ljavax/microedition/lcdui/Image;

.field private password_h:I

.field private password_w:I

.field public point_Y:I

.field public point_x:I

.field public screenId:B

.field public securityFouce:B

.field public security_description_index:I

.field private strHelp:Ljava/lang/String;

.field private sys_recommend:Ljavax/microedition/lcdui/Image;

.field private sys_recommend_h:I

.field private sys_recommend_w:I

.field private final tagLineNum:I

.field private tagStartIndex:I

.field public toMasterMenu:Z

.field private ui:Lcom/t4game/GameUi;

.field public userInfo:[Ljava/lang/String;

.field private wapStr:Ljava/lang/String;

.field private widthOfItemBG:I

.field private widthOfItemLeftTop:I

.field private x:I

.field private x1:I

.field private x2:I

.field private x3:I

.field private xShip:I

.field private xWater:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/t4game/AuthenticateCommon;->DefaultState:Z

    const-string v0, ""

    sput-object v0, Lcom/t4game/AuthenticateCommon;->WaitingMsg:Ljava/lang/String;

    sput-boolean v1, Lcom/t4game/AuthenticateCommon;->isReading:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v7, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->ff:I

    iput-byte v4, p0, Lcom/t4game/AuthenticateCommon;->screenId:B

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->descriptions:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    iput-byte v4, p0, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iput-byte v4, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->isSetDefualsStr:Z

    const/16 v1, 0x4a

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->VersionWidth:B

    sget-boolean v1, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    iput-byte v4, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/AuthenticateCommon;->aboutPage:[[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v7, v1, v4

    const-string v3, ""

    aput-object v7, v1, v5

    iput-object v1, p0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->strHelp:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->img_Main_BG:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontNormal:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontBright:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    new-array v1, v6, [Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    new-array v1, v6, [Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x32

    sub-int/2addr v1, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v1, v3

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->wapStr:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->x:I

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->x3:I

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->xShip:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/t4game/AuthenticateCommon;->lastTime:J

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx2:Z

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx3:Z

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx4:Z

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolxWater:Z

    return-void

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method private HelpAndAbout(IIB)V
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    sub-int v1, p2, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x32 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method private InitAbout()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u7248\u6743\u58f0\u660e\uff1a"

    aput-object v2, v1, v4

    const-string v2, "t4game\u51fa\u54c1\uff0c\u7248\u6743\u6240\u6709"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "24\u5c0f\u65f6\u5ba2\u670d\u7535\u8bdd\uff1a"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/t4game/Defaults;->ServerHotLine:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u8bdb\u795e\u5b98\u7f51\uff1a"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/t4game/Defaults;->OfficialStation:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->aboutPage:[[Ljava/lang/String;

    iput v4, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    return-void
.end method

.method private InitHelp()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/c"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getOffsetData(Ljava/io/InputStream;)[S

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/t4game/Util;->getString([B[SI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->strHelp:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private InitLogin()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/t4game/AuthenticateCommon;->ReleaseUI()V

    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/login.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    iput-byte v8, v0, Lcom/t4game/GameUi;->commandType:B

    invoke-virtual {p0, v5}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/t4game/AuthenticateCommon;->getChoiceBox(I)Lcom/t4game/UI_ChoiceBox;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/t4game/GameUi;->deleteItem(I)V

    iget-object v3, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v3, v5}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v3

    const/16 v4, 0x9

    iput-byte v4, v3, Lcom/t4game/UI_Super;->upFocusIndex:B

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u4fdd\u5b58\u7528\u6237\u5bc6\u7801"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/t4game/UI_ChoiceBox;->setChoice([Ljava/lang/String;[B)I

    iget-object v2, v2, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    sget-boolean v3, Lcom/t4game/Defaults;->remenber:Z

    if-eqz v3, :cond_2

    move v3, v6

    :goto_0
    aput-byte v3, v2, v5

    invoke-virtual {p0, v9}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    const-string v3, "\u8d26\u53f7:"

    iput-object v3, v2, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    const-string v3, "\u5bc6\u7801:"

    iput-object v3, v2, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    iget-short v3, v2, Lcom/t4game/UI_FunctionItem;->x:S

    add-int/2addr v3, v5

    int-to-short v3, v3

    iput-short v3, v2, Lcom/t4game/UI_FunctionItem;->x:S

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    iget-short v3, v2, Lcom/t4game/UI_FunctionItem;->x:S

    add-int/2addr v3, v5

    int-to-short v3, v3

    iput-short v3, v2, Lcom/t4game/UI_FunctionItem;->x:S

    sget-boolean v2, Lcom/t4game/Defaults;->CNL_TW:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    iput-byte v7, v2, Lcom/t4game/UI_FunctionItem;->dnFocusIndex:B

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    const/4 v3, 0x6

    iput-byte v3, v2, Lcom/t4game/UI_FunctionItem;->dnFocusIndex:B

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v2

    iput-byte v7, v2, Lcom/t4game/UI_FunctionItem;->rtFocusIndex:B

    :cond_0
    sget-boolean v2, Lcom/t4game/Defaults;->remenber:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/t4game/AuthenticateCommon;->isSetDefualsStr:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2, v6}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    :goto_1
    sget-boolean v1, Lcom/t4game/Defaults;->CNL_TW:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u767b\u5f55\u6e38\u620f"

    aput-object v2, v1, v5

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    aput-object v2, v1, v6

    const-string v2, "\u8054\u7f51\u65b9\u5f0f"

    aput-object v2, v1, v8

    const-string v2, "\u4fee\u590d\u6e38\u620f"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u5b98\u65b9\u7f51\u7ad9"

    aput-object v3, v1, v2

    sget-object v2, Lcom/t4game/Defaults;->OfficialStation:Ljava/lang/String;

    aput-object v2, v1, v7

    :goto_2
    move v2, v7

    :goto_3
    array-length v3, v1

    add-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/t4game/AuthenticateCommon;->getFunctionItem(I)Lcom/t4game/UI_FunctionItem;

    move-result-object v3

    sub-int v4, v2, v7

    aget-object v4, v1, v4

    iput-object v4, v3, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2, v6}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/t4game/AuthenticateCommon;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u767b\u5f55\u6e38\u620f"

    aput-object v2, v1, v5

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    aput-object v2, v1, v6

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3"

    aput-object v2, v1, v8

    const-string v2, "\u4fee\u6539\u5bc6\u7801"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u4fee\u590d\u6e38\u620f"

    aput-object v3, v1, v2

    const-string v2, "\u5b98\u65b9\u7f51\u7ad9"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/t4game/Defaults;->OfficialStation:Ljava/lang/String;

    aput-object v3, v1, v2

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v7}, Lcom/t4game/GameUi;->setFocus(B)V

    :goto_4
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    goto :goto_4
.end method

.method private drawAni(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v3, 0x24

    const/4 v4, 0x1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x:I

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x:I

    :cond_0
    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    shr-int/lit8 v2, v2, 0x7

    if-le v1, v2, :cond_1

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx2:Z

    :cond_1
    iget-boolean v1, p0, Lcom/t4game/AuthenticateCommon;->boolx2:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->xShip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->xShip:I

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    if-le v1, v2, :cond_3

    iput-boolean v5, p0, Lcom/t4game/AuthenticateCommon;->boolx2:Z

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    :cond_3
    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    shr-int/lit8 v2, v2, 0x7

    if-le v1, v2, :cond_4

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx3:Z

    :cond_4
    iget-boolean v1, p0, Lcom/t4game/AuthenticateCommon;->boolx3:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_5
    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    if-le v1, v2, :cond_6

    iput-boolean v5, p0, Lcom/t4game/AuthenticateCommon;->boolx3:Z

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    :cond_6
    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    shr-int/lit8 v2, v2, 0x7

    if-le v1, v2, :cond_7

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolx4:Z

    :cond_7
    iget-boolean v1, p0, Lcom/t4game/AuthenticateCommon;->boolx4:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->x3:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/t4game/AuthenticateCommon;->x3:I

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->x3:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_8
    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->x:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/t4game/AuthenticateCommon;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/AuthenticateCommon;->lastTime:J

    iget-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->boolxWater:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    :goto_0
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_9

    iput-boolean v4, p0, Lcom/t4game/AuthenticateCommon;->boolxWater:Z

    :cond_9
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    if-gez v0, :cond_a

    iput-boolean v5, p0, Lcom/t4game/AuthenticateCommon;->boolxWater:Z

    :cond_a
    return-void

    :cond_b
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->xWater:I

    goto :goto_0
.end method

.method private paintMenuItem(Ljavax/microedition/lcdui/Graphics;[IIIZZ)V
    .locals 15

    sget v5, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_WIDTH:I

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x2

    sub-int v4, p4, v3

    sget v6, Lcom/t4game/Defaults;->sfh:I

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    if-eqz p5, :cond_1

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontBright:Ljavax/microedition/lcdui/Image;

    move-object v2, v1

    :goto_1
    sget-boolean v1, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-nez v1, :cond_5

    add-int/lit8 v1, p3, 0x0

    move v11, v1

    :goto_2
    add-int/lit8 v12, p4, 0x5

    sget-boolean v1, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move v13, v0

    mul-int/lit8 v1, v13, 0x10

    sub-int v1, v5, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v11, v1

    const/4 v1, 0x0

    move v14, v1

    :goto_3
    if-ge v14, v13, :cond_4

    aget v1, p2, v14

    mul-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0xf

    const/4 v7, 0x0

    mul-int/lit8 v1, v14, 0x10

    add-int v8, v11, v1

    add-int/lit8 v9, v12, 0x5

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x2

    sub-int v4, p4, v3

    sget v6, Lcom/t4game/Defaults;->sfh:I

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontNormal:Ljavax/microedition/lcdui/Image;

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move v1, v0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    move v13, v1

    :goto_4
    move-object/from16 v0, p2

    array-length v0, v0

    move v1, v0

    if-ge v13, v1, :cond_4

    aget v1, p2, v13

    mul-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0xf

    const/4 v7, 0x0

    add-int/lit8 v1, v11, 0x32

    mul-int/lit8 v8, v13, 0x12

    add-int/2addr v8, v1

    add-int/lit8 v9, v12, 0x5

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    move v13, v1

    :goto_5
    move-object/from16 v0, p2

    array-length v0, v0

    move v1, v0

    if-ge v13, v1, :cond_4

    aget v1, p2, v13

    mul-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0xf

    const/4 v7, 0x0

    add-int/lit8 v1, v11, 0x43

    mul-int/lit8 v8, v13, 0x17

    add-int/2addr v8, v1

    add-int/lit8 v9, v12, 0x5

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_5

    :cond_4
    return-void

    :cond_5
    move/from16 v11, p3

    goto/16 :goto_2
.end method

.method private paintSecurityDescription(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    const v5, 0xffc700

    const/16 v1, 0x28

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v2, p0, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v7

    add-int/lit16 v2, v2, 0x87

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    iget-byte v2, p0, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    sub-int v7, v0, v2

    move v8, v7

    :goto_1
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    aget-object v0, v0, v8

    sub-int v2, v8, v7

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x87

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v6, p0, Lcom/t4game/AuthenticateCommon;->lines_of_security:B

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->security_description_index:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    add-int/lit8 v3, v3, 0x14

    sub-int/2addr v3, v1

    const/16 v4, 0x7d

    const/16 v5, 0x9f

    move v1, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    return-void
.end method

.method private paintSecurityMenu(III[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V
    .locals 14

    iput p1, p0, Lcom/t4game/AuthenticateCommon;->point_x:I

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/t4game/AuthenticateCommon;->point_Y:I

    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    move v0, v9

    move/from16 v1, p8

    if-le v0, v1, :cond_2

    add-int/lit8 v2, p5, 0x1

    move v0, v2

    move/from16 v1, p8

    if-le v0, v1, :cond_1

    add-int/lit8 v2, p5, 0x1

    sub-int v2, v2, p8

    int-to-byte v2, v2

    add-int v3, v2, p8

    int-to-byte v3, v3

    move v10, v3

    move v11, v2

    :goto_0
    const/4 v12, 0x0

    move v13, v11

    :goto_1
    if-ge v13, v10, :cond_4

    move/from16 v0, p5

    move v1, v13

    if-ne v0, v1, :cond_3

    if-eqz p7, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xa

    add-int/lit8 v4, p3, 0x5

    sub-int v5, v13, v11

    add-int/2addr v5, v12

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0x78

    sget v7, Lcom/t4game/Defaults;->sfh:I

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v2, p4, v13

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v4, p3, 0x5

    sub-int v5, v13, v11

    add-int/2addr v5, v12

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xf9df00

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move/from16 v10, p8

    move v11, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    int-to-byte v3, v9

    move v10, v3

    move v11, v2

    goto :goto_0

    :cond_3
    aget-object v2, p4, v13

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v4, p3, 0x5

    sub-int v5, v13, v11

    add-int/2addr v5, v12

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xffffff

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    sub-int v5, v3, v4

    add-int/lit8 v6, p3, 0x5

    move v0, v9

    move/from16 v1, p8

    if-le v0, v1, :cond_5

    move/from16 v3, p8

    :goto_3
    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int v7, v3, v4

    move/from16 v3, p8

    move/from16 v4, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_5
    move v3, v9

    goto :goto_3
.end method

.method private paintVersion(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/16 v3, 0x33

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x1

    const v0, 0xe6b9aa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x24

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v0, v0, 0x1

    sub-int v8, v1, v0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x14

    sub-int v9, v0, v1

    invoke-static {v8, v9, v10, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, v8, 0x5

    add-int/lit8 v2, v9, 0x5

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x8

    invoke-static {v0, v9, v10, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x7

    add-int/lit8 v1, v8, 0xd

    invoke-static {v1, v9, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, v8, 0x12

    add-int/lit8 v2, v9, 0x5

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    add-int/lit8 v1, v8, 0x15

    invoke-static {v1, v9, v0, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1a

    invoke-static {v0, v9, v10, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, v8, 0x1f

    add-int/lit8 v2, v9, 0x5

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x24

    const v1, 0xe6b9aa

    invoke-static {v0, v9, v1, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method


# virtual methods
.method public InitMasterMenu()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "/Main_Title.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->img_Main_BG:Ljavax/microedition/lcdui/Image;

    const-string v0, "/mm1.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

    const-string v0, "/mm2.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

    const-string v0, "/mm4.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontNormal:Ljavax/microedition/lcdui/Image;

    const-string v0, "/mm5.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontBright:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->widthOfItemLeftTop:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->heightOfItemLeftTop:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->widthOfItemBG:I

    const-string v0, "/cloud.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->x1:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->x2:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->x3:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->widthOfItemBG:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton1.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    sget-boolean v0, Lcom/t4game/Defaults;->isAllowUserQuickLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton2.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton5.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton4.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton11.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    sget-boolean v0, Lcom/t4game/Defaults;->isAllowUserQuickLogin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton12.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_1
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton15.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton14.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v0, "/login/account.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->account:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/password.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->password:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/passward_confirm.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/manual_reg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->manual_reg:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/sys_recommend.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/logging_in_y.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/logging_in_b.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/intro.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->intro:Ljavax/microedition/lcdui/Image;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton3.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/login/botton13.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1
.end method

.method public ReleaseUI()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    return-void
.end method

.method public drawAbout(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const v5, 0xffc700

    const/16 v3, 0x14

    const/4 v9, 0x0

    const/4 v4, -0x1

    const-string v6, "\u7248\u672c\u53f7\uff1a"

    const-string v0, "\u6e38\u620f\u5173\u4e8e"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->aboutPage:[[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    aget-object v7, v0, v1

    array-length v8, v7

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/t4game/Defaults;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    if-ge v9, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/t4game/Defaults;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d44\u6e90\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d44\u6e90\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    :cond_0
    move v1, v0

    move v0, v9

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v2, v7, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_1

    aget-object v1, v7, v0

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/t4game/Defaults;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d44\u6e90\u53f7\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v2, 0x2d

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v0, v7, v9

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2d

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v9

    add-int/2addr v2, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_3
    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    mul-int v2, v0, v8

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v3, 0xe

    sub-int v3, v0, v3

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x2d

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int v5, v8, v0

    move v0, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_4
    move v0, v9

    goto/16 :goto_0
.end method

.method public drawHelp(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const v4, 0xffc700

    const/16 v8, 0xa

    const-string v0, "\u6e38\u620f\u5e2e\u52a9"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    invoke-virtual {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x1c

    sub-int/2addr v0, v1

    const/16 v1, 0x20

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sget-byte v2, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v0, 0x1c

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->strHelp:Ljava/lang/String;

    const/16 v2, 0x55

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    iget v5, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    mul-int/2addr v5, v0

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->drawPage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIZ)I

    move-result v0

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->helpPage:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    sub-int v2, v0, v8

    iget v4, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v1, v4, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v2, v0, 0xa

    iget v4, p0, Lcom/t4game/AuthenticateCommon;->helpPage:I

    invoke-static {v2, v1, v4, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    const v2, 0xffffff

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x0

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v2, v4, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->helpPage:I

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v1, v1, 0x2

    mul-int v4, v0, v1

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->curPage:I

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v1, v1, 0x2

    mul-int v6, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0xe

    sub-int v7, v0, v1

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int v9, v0, v1

    move v8, v3

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawLogin(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    const-string v0, "\u5f00\u59cb\u6e38\u620f"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u9009\u62e9"

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawMasterMenu(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v0, 0x8

    sget-object v1, Lcom/t4game/Defaults;->MAINMENU_ITEM_TEXT:[[I

    array-length v1, v1

    iget-byte v3, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    invoke-static {v1, v0, v3}, Lcom/t4game/Util;->getScrollStartAndEnd(III)[I

    move-result-object v6

    sget v7, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_X:I

    sget v8, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_Y:I

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->img_Main_BG:Ljavax/microedition/lcdui/Image;

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->resizeImage(Ljavax/microedition/lcdui/Image;IIII)V

    invoke-direct {p0, p1}, Lcom/t4game/AuthenticateCommon;->drawAni(Ljavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0, p1}, Lcom/t4game/AuthenticateCommon;->paintVersion(Ljavax/microedition/lcdui/Graphics;)V

    aget v0, v6, v2

    :goto_0
    const/4 v1, 0x1

    aget v1, v6, v1

    if-ge v0, v1, :cond_1

    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v3, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    aget-object v1, v1, v3

    sget v3, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_SAPCE:I

    iget-byte v4, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    aget v5, v6, v2

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v3, v8

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v7, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v0

    sget v3, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_PADDING_H:I

    add-int/2addr v3, v7

    sget v4, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_PADDING_V:I

    add-int/2addr v4, v8

    sget v5, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_SAPCE:I

    aget v9, v6, v2

    sub-int v9, v0, v9

    mul-int/2addr v5, v9

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public drawOfNetChoice(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v0, 0x0

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v2, 0xe

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v2, 0x5eb

    invoke-static {v8, v2}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    iget-byte v6, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    sget-byte v9, Lcom/t4game/Defaults;->linesOfScreen:B

    move v2, v0

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintMenuInFullScreen(IIIILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sget-byte v2, Lcom/t4game/Defaults;->linesOfScreen:B

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u73b0\u5728\u7684\u7f51\u7edc\u8fde\u63a5\u65b9\u5f0f\u4e3a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v2, v3, v4}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    move v8, v0

    move v2, v1

    move v0, v10

    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_0

    if-nez v8, :cond_1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v3, v7, v8

    invoke-virtual {v1, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    aget-object v0, v7, v8

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffc700

    move v4, v10

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public drawRegister(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Lcom/t4game/TagString;)V
    .locals 11

    const/16 v2, 0x23

    const/16 v1, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {p2, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    sget v7, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int v8, v0, v2

    if-eqz p3, :cond_4

    iget v3, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v4, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    add-int/2addr v0, v4

    sub-int/2addr v0, v9

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v4

    if-le v0, v4, :cond_1

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    move v4, v0

    :goto_0
    const/4 v6, -0x1

    move-object v0, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    sub-int v0, v7, v1

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v3, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v8, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    if-gt v0, v2, :cond_2

    add-int/lit8 v0, v7, 0xa

    invoke-static {v0, v8, v9, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    const v0, 0xffffff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v0, v7, 0x0

    add-int/lit8 v2, v8, 0x5

    add-int/lit8 v3, v7, 0x5

    add-int/lit8 v4, v8, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x23

    iget-object v2, p0, Lcom/t4game/AuthenticateCommon;->wapStr:Ljava/lang/String;

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v2, v3, v4}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v10

    :goto_2
    if-ge v4, v3, :cond_4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v0

    const v6, 0xffc700

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v6, v2, v4

    invoke-virtual {p1, v6, v1, v5, v10}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-boolean v6, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    if-eqz v6, :cond_0

    const v6, 0xffff00

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v6, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    aget-object v7, v2, v4

    invoke-static {v7}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v1, v6, v7, v5}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v4, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    add-int/2addr v0, v4

    sub-int/2addr v0, v9

    move v4, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    iget v2, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    add-int/lit8 v0, v7, 0xa

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v2

    iget v3, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    div-int/2addr v2, v3

    invoke-static {v0, v8, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v7, 0xa

    invoke-virtual {p3}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v2

    iget v3, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v8, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "\u540c\u610f"

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    if-eqz v0, :cond_5

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    :cond_5
    return-void
.end method

.method public drawUserCenter(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x1c

    const/4 v1, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x2

    const-string v0, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v10

    const/16 v3, 0x20

    sub-int v6, v0, v3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v3, 0x1e

    sget v4, Lcom/t4game/Defaults;->CANVAS_WW:I

    sub-int/2addr v4, v2

    sub-int v5, v6, v8

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget v7, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x1e

    sget v4, Lcom/t4game/Defaults;->CANVAS_WW:I

    sub-int/2addr v4, v2

    sub-int v5, v6, v8

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const-string v0, "\u786e\u5b9a"

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/16 v8, 0x8

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v1, v0, 0x14

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v10

    const/16 v2, 0x20

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1c

    const/4 v2, 0x5

    sub-int v3, v0, v2

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v0, 0x1c

    iget-byte v5, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/t4game/AuthenticateCommon;->paintSecurityMenu(III[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x1

    move v7, v9

    :goto_0
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->description_current:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v2, 0x1c

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChoiceBox(I)Lcom/t4game/UI_ChoiceBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_ChoiceBox;

    check-cast p0, Lcom/t4game/UI_ChoiceBox;

    return-object p0
.end method

.method public getCommonMenuIndex(II)B
    .locals 2

    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    int-to-byte v1, p2

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->pressedFunctionMenu(BBI)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    return v0
.end method

.method public getFunctionItem(I)Lcom/t4game/UI_FunctionItem;
    .locals 2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_FunctionItem;

    check-cast p0, Lcom/t4game/UI_FunctionItem;

    return-object p0
.end method

.method public getInputBox(I)Lcom/t4game/UI_InputBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_InputBox;

    check-cast p0, Lcom/t4game/UI_InputBox;

    return-object p0
.end method

.method public getTextBox(I)Lcom/t4game/UI_TextBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    check-cast p0, Lcom/t4game/UI_TextBox;

    return-object p0
.end method

.method public initMasterMenuData()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v4, v0

    const/16 v5, 0xf

    sub-int/2addr v4, v5

    const/16 v5, 0x1e

    shr-int/lit8 v1, v1, 0x1

    sput v1, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_PADDING_V:I

    sub-int v1, v0, v2

    shr-int/lit8 v1, v1, 0x1

    sput v1, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_PADDING_H:I

    sget v1, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_PADDING_V:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_SAPCE:I

    sput v0, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_WIDTH:I

    sget v0, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_SAPCE:I

    sget-object v1, Lcom/t4game/Defaults;->MAINMENU_ITEM_TEXT:[[I

    array-length v1, v1

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_HEIGHT:I

    sput v4, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_X:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v5

    sget v1, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_Y:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->account:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->account_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->account:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->account_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->password:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->password_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->password:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->password_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->manual_reg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->manual_reg_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->manual_reg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->manual_reg_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b_h:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->intro:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->intro_w:I

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->intro:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->intro_h:I

    return-void
.end method

.method public onPointerAbout(II)V
    .locals 1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerUpArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateCommon;->onPressedAbout(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerDownArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateCommon;->onPressedAbout(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateCommon;->onPressedAbout(I)V

    goto :goto_0
.end method

.method public onPointerEvent(II)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameUi;->pointEvent(II)B

    return-void
.end method

.method public onPointerHelp(II)V
    .locals 0

    return-void
.end method

.method public onPointerLogin(II)B
    .locals 2

    const/4 v0, -0x1

    sget-boolean v1, Lcom/t4game/Defaults;->showMsg:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/t4game/AuthenticateCommon;->onPointerEvent(II)V

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->getAction()Lcom/t4game/UI_Super;

    move-result-object v0

    iget-byte v0, v0, Lcom/t4game/UI_Super;->id:B

    :cond_0
    return v0
.end method

.method public onPointerMasterMenu(II)V
    .locals 8

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget v2, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_X:I

    sget v3, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_Y:I

    sget v4, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_WIDTH:I

    sget v5, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_HEIGHT:I

    sget v6, Lcom/t4game/PointerUtil;->MM_MASTER_MENU_ITEM_SAPCE:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/t4game/PointerUtil;->getPointerMenuIndex(IIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerMenuIndex:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    :cond_0
    return-void
.end method

.method public onPointerNetChoice()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/t4game/Authenticate;->setChinaMoblieOrChinaUni()V

    const/4 v1, -0x5

    sput v1, Lcom/t4game/Defaults;->preFouce:I

    :cond_0
    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    :cond_1
    return-void
.end method

.method public onPointerSecurity(II[[I)V
    .locals 6

    const/4 v5, 0x0

    array-length v0, p3

    int-to-byte v0, v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_2

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    aget-object v4, p3, v1

    invoke-static {v2, v3, v4}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, v5, v1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    iget-byte v2, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    sget v3, Lcom/t4game/Defaults;->preFouce:I

    if-ne v2, v3, :cond_1

    const/4 v2, -0x5

    sput v2, Lcom/t4game/Defaults;->preFouce:I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    iget-byte v2, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    sput v2, Lcom/t4game/Defaults;->preFouce:I

    iget-byte v2, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    iput-byte v2, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onPressedAbout(I)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->aboutPage:[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/AuthenticateCommon;->HelpAndAbout(IIB)V

    return-void
.end method

.method public onPressedHelp(I)V
    .locals 2

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->helpPage:I

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/AuthenticateCommon;->HelpAndAbout(IIB)V

    return-void
.end method

.method public onPressedLogin(I)B
    .locals 2

    const/4 v0, -0x1

    sget-boolean v1, Lcom/t4game/Defaults;->showMsg:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->getAction()Lcom/t4game/UI_Super;

    move-result-object v0

    iget-byte v0, v0, Lcom/t4game/UI_Super;->id:B

    :cond_0
    return v0
.end method

.method public onPressedMaseterMenu(I)B
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    if-nez v1, :cond_0

    sget-object v1, Lcom/t4game/Defaults;->MAINMENU_ITEM_TEXT:[[I

    array-length v1, v1

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    goto :goto_0

    :cond_0
    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    goto :goto_0

    :sswitch_1
    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    sget-object v2, Lcom/t4game/Defaults;->MAINMENU_ITEM_TEXT:[[I

    array-length v2, v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    goto :goto_0

    :cond_1
    iget-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/t4game/Defaults;->soundPlayer:Lcom/t4game/SoundPlayer;

    invoke-virtual {v0}, Lcom/t4game/SoundPlayer;->destroy()V

    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x32 -> :sswitch_0
        0x34 -> :sswitch_0
        0x36 -> :sswitch_1
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPressedRegister(II)Z
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    :cond_0
    iget-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    return v0

    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    add-int/2addr v0, v1

    if-ge v0, p2, :cond_3

    iget v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    iget v1, p0, Lcom/t4game/AuthenticateCommon;->tagLineNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    :cond_3
    iget-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    goto :goto_0
.end method

.method public paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    invoke-static {p1}, Lcom/t4game/DraftingUtil;->paintLoading(Ljavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/AuthenticateCommon;->WaitingMsg:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v2, v2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1}, Lcom/t4game/GameUi;->release()V

    :cond_0
    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/AuthenticateCommon;->aboutPage:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->strHelp:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->ui:Lcom/t4game/GameUi;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->img_Main_BG:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemBG:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuItemLeftTop:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontNormal:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgMainMenuFontBright:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgBottonImage:[Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgBrightBottonImage:[Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->imgClouds:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->account:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->password:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->passward_confirm:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->manual_reg:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->sys_recommend:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->logging_in_y:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->logging_in_b:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/AuthenticateCommon;->intro:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public setViewScreen(BB)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-byte p1, p0, Lcom/t4game/AuthenticateCommon;->screenId:B

    iput-byte p2, p0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    if-ne v0, v4, :cond_0

    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->screenId:B

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/AuthenticateCommon;->ReleaseUI()V

    :cond_0
    return-void

    :pswitch_1
    sput-boolean v2, Lcom/t4game/AuthenticateCommon;->isReading:Z

    sget-object v0, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_4

    iput-byte v2, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/t4game/AuthenticateCommon;->img_Main_BG:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/t4game/AuthenticateCommon;->InitMasterMenu()V

    invoke-virtual {p0}, Lcom/t4game/AuthenticateCommon;->initMasterMenuData()V

    :cond_2
    sget-boolean v0, Lcom/t4game/Defaults;->NeedRepaired:Z

    if-eqz v0, :cond_3

    iput-byte v4, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    :cond_3
    sget-object v0, Lcom/t4game/Defaults;->soundPlayer:Lcom/t4game/SoundPlayer;

    const-string v1, "/mid/0.mid"

    invoke-virtual {v0, v1}, Lcom/t4game/SoundPlayer;->playMIDI(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->MasterMenuIndex:B

    sput-boolean v3, Lcom/t4game/Defaults;->isAllowUserQuickLogin:Z

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :pswitch_2
    iput-boolean v2, p0, Lcom/t4game/AuthenticateCommon;->isWapSelect:Z

    iput v2, p0, Lcom/t4game/AuthenticateCommon;->tagStartIndex:I

    const-string v0, "\u8bf7\u70b9\u6b64\u67e5\u770b\u534f\u8bae\u8be6\u60c5"

    iput-object v0, p0, Lcom/t4game/AuthenticateCommon;->wapStr:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/AuthenticateCommon;->InitLogin()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/AuthenticateCommon;->InitHelp()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/AuthenticateCommon;->InitAbout()V

    goto :goto_0

    :pswitch_6
    sput v2, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    goto :goto_0

    :pswitch_7
    iget-byte v0, p0, Lcom/t4game/AuthenticateCommon;->securityFouce:B

    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    goto :goto_0

    :pswitch_8
    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    iput-byte v0, p0, Lcom/t4game/AuthenticateCommon;->commonMenuIndex:B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
