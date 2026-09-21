.class public Lcom/t4game/RoleLogin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/IViewText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4game/RoleLogin$inputForm;
    }
.end annotation


# static fields
.field public static final INPUT_WINDOW:B = 0x2t

.field public static final PLAYER_CREATE_ROLE_WINDOW:B = 0x1t

.field public static final PLAYER_ROLE_LIST_WINDOW:B

.field static isCreateNewPlayer:Z

.field static playerRoleListWindow_title:Ljava/lang/String;

.field static s_bMessageHead:B

.field static s_sConnection:Ljava/lang/String;

.field static s_sWindowTitle:Ljava/lang/String;


# instance fields
.field private MOVE_TIMER:B

.field PlayerRoleListWindow_1state_list:[Ljava/lang/String;

.field final RoleListWindow_h_focus:I

.field final RoleListWindow_w_focus:I

.field alert_msg:Ljava/lang/String;

.field private arrowImg:Ljavax/microedition/lcdui/Image;

.field private autoFlipCnt:B

.field private autoFlipTimeCnt:B

.field blnComfirmed:Z

.field private createRoleImg:Ljavax/microedition/lcdui/Image;

.field private createRolePointer:[[I

.field private curInfo:Ljava/lang/String;

.field private currentTick:B

.field deleteRoleId:I

.field private description:Ljavax/microedition/lcdui/StringItem;

.field private form:Lcom/t4game/RoleLogin$inputForm;

.field private fromScreenId:B

.field private g:Ljavax/microedition/lcdui/Graphics;

.field gameWorld:Lcom/t4game/GameWorld;

.field public volatile httpProcessOk:I

.field private inCreateRole:Z

.field input_String:Ljava/lang/String;

.field input_msg:Ljava/lang/String;

.field input_state:I

.field input_write_String:Ljava/lang/String;

.field isGuest:Z

.field final job_Description:[Ljava/lang/String;

.field private volatile keyCode:I

.field lastplayerRoleListWindow_focus:I

.field menu:Lcom/t4game/UI_Menu;

.field private menuHorizontalIndex:I

.field private menuVerticalIndex:I

.field msg_frame:B

.field private myAlert:Ljavax/microedition/lcdui/Alert;

.field network:Lcom/t4game/TcpNetwork;

.field private playIntro:[Ljava/lang/String;

.field public playerInfo:[Ljava/lang/String;

.field private playerListLable:[Ljava/lang/String;

.field playerRoleListWindow_focus:B

.field final playerRoleListWindow_focus_max:B

.field playerRoleListWindow_frame:B

.field playerRoleListWindow_isDeleteState:Z

.field playerRoleListWindow_list:Ljava/util/Vector;

.field final playerRoleListWindow_list_max:B

.field playerRoleListWindow_page:B

.field playerRoleListWindow_state:B

.field playerRoleListWindow_sum_per_page:B

.field playerRoleListWindow_turn_leftright:B

.field public playerRoleNum:I

.field playerStart:B

.field player_role_list_forbiden:[Ljava/lang/String;

.field recivedBuffer:Lcom/t4game/IoBuffer;

.field public roleList:Ljava/util/Vector;

.field public roleOriginal:[Lcom/t4game/MiniPlayer;

.field private role_property:[Ljava/lang/String;

.field public runing:Z

.field private screenId:B

.field sendBuffer:Lcom/t4game/IoBuffer;

.field ticker_frame:I

.field ticker_isend:Z

.field ticker_leng_off:I

.field ticker_leng_per:I

.field ticker_text_leng:I

.field ui:Lcom/t4game/GameUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u89d2\u8272\u5217\u8868"

    sput-object v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->currentTick:B

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u804c\u4e1a"

    aput-object v1, v0, v2

    const-string v1, "\u6027\u522b"

    aput-object v1, v0, v4

    const-string v1, "\u56fd\u5bb6"

    aput-object v1, v0, v6

    const-string v1, "\u540d\u5b57"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/t4game/RoleLogin;->role_property:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->roleList:Ljava/util/Vector;

    iput v2, p0, Lcom/t4game/RoleLogin;->playerRoleNum:I

    const/4 v0, -0x3

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    const/4 v0, -0x3

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    iput v2, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iput v2, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iput-boolean v4, p0, Lcom/t4game/RoleLogin;->inCreateRole:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->description:Ljavax/microedition/lcdui/StringItem;

    iput v2, p0, Lcom/t4game/RoleLogin;->input_state:I

    iput-boolean v2, p0, Lcom/t4game/RoleLogin;->isGuest:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/RoleLogin;->lastplayerRoleListWindow_focus:I

    iput-boolean v2, p0, Lcom/t4game/RoleLogin;->blnComfirmed:Z

    iput v2, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    iput-boolean v4, p0, Lcom/t4game/RoleLogin;->runing:Z

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerStart:B

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->alert_msg:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u529b\u58eb\uff0c\u987d\u5f3a\u7684\u751f\u547d\u529b\uff0c\u653b\u9632\u7686\u575a\u5982\u78d0\u77f3\uff0c\u6218\u9635\u4e2d\u53ef\u4e00\u9a6c\u5f53\u5148\uff0c\u4e3a\u540c\u4f34\u7b51\u8d77\u575a\u5b9e\u58c1\u5792\u3002"

    aput-object v1, v0, v2

    const-string v1, "\u523a\u5ba2\uff0c\u8fc5\u901f\u3001\u654f\u6377\u3001\u4e13\u7cbe\u6bd2\u672f\uff0c\u6280\u6cd5\u591a\u53d8\uff0c\u5584\u4e8e\u6e38\u6597\uff0c\u4e07\u519b\u9635\u4e2d\u8fc7\uff0c\u6ef4\u8840\u4e0d\u6cbe\u8863\u3002"

    aput-object v1, v0, v4

    const-string v1, "\u5524\u96f7\u5e08\uff0c\u5f3a\u5927\u7684\u653b\u51fb\u529b\uff0c\u81f4\u547d\u7684\u7fa4\u653b\u6280\u80fd\uff0c\u8303\u56f4\u7edd\u6740\uff0c\u53d1\u52a8\u5373\u50ac\u67af\u62c9\u673d\uff0c\u52bf\u5982\u7834\u7af9\u3002"

    aput-object v1, v0, v6

    const-string v1, "\u5929\u5e08\uff0c\u64c5\u957f\u9635\u6cd5\u7b26\u5492\uff0c\u653b\u5b88\u517c\u5f97\uff0c\u4ea6\u6cbb\u7597\u6709\u9053\uff0c\u5999\u624b\u56de\u6625\uff0c\u503c\u5f97\u540c\u4f34\u6027\u547d\u76f8\u6258\u3002"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/t4game/RoleLogin;->job_Description:[Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->autoFlipTimeCnt:B

    iput v2, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    iput v3, p0, Lcom/t4game/RoleLogin;->ticker_leng_per:I

    iput v2, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    iput v2, p0, Lcom/t4game/RoleLogin;->ticker_text_leng:I

    iput-boolean v2, p0, Lcom/t4game/RoleLogin;->ticker_isend:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iput-byte v5, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list_max:B

    iput-boolean v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_isDeleteState:Z

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    iput-byte v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus_max:B

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_frame:B

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_turn_leftright:B

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_page:B

    iput-byte v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_sum_per_page:B

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    const/16 v0, 0x280

    iput v0, p0, Lcom/t4game/RoleLogin;->RoleListWindow_w_focus:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/t4game/RoleLogin;->RoleListWindow_h_focus:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u540d\u79f0"

    aput-object v1, v0, v2

    const-string v1, "\u7ea7\u522b"

    aput-object v1, v0, v4

    const-string v1, "\u56fd\u5bb6"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/RoleLogin;->playerListLable:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u540d\u79f0"

    aput-object v1, v0, v2

    const-string v1, "\u7b49\u7ea7"

    aput-object v1, v0, v4

    const-string v1, "\u804c\u4e1a\uff1a"

    aput-object v1, v0, v6

    const-string v1, "\u56fd\u5bb6"

    aput-object v1, v0, v3

    const-string v1, "\u573a\u666f:"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/t4game/RoleLogin;->playIntro:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u8fdb\u5165\u6e38\u620f"

    aput-object v1, v0, v2

    const-string v1, "\u5220\u9664\u89d2\u8272"

    aput-object v1, v0, v4

    const-string v1, "\u521b\u5efa\u89d2\u8272"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/RoleLogin;->PlayerRoleListWindow_1state_list:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u4fee\u6539\u540d\u79f0"

    aput-object v1, v0, v2

    const-string v1, "\u8fdb\u5165\u6e38\u620f"

    aput-object v1, v0, v4

    const-string v1, "\u5220\u9664\u89d2\u8272"

    aput-object v1, v0, v6

    const-string v1, "\u521b\u5efa\u89d2\u8272"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/t4game/RoleLogin;->player_role_list_forbiden:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_String:Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->msg_frame:B

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    iput-object p1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    iput-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    :goto_0
    iget-object v0, p1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iput-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    goto :goto_0

    :array_0
    .array-data 4
        0x19d
        0x3c
        0x69
        0x23
    .end array-data

    :array_1
    .array-data 4
        0x19d
        0x55
        0x69
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x19d
        0x71
        0x69
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x19d
        0x8c
        0x69
        0x23
    .end array-data
.end method

.method static synthetic access$002(Lcom/t4game/RoleLogin;Ljavax/microedition/lcdui/StringItem;)Ljavax/microedition/lcdui/StringItem;
    .locals 0

    iput-object p1, p0, Lcom/t4game/RoleLogin;->description:Ljavax/microedition/lcdui/StringItem;

    return-object p1
.end method

.method private clearInput()V
    .locals 2

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->clearText()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/Texter;->enable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_String:Ljava/lang/String;

    return-void
.end method

.method private deletRole()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->curStateOfSecurityPW:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    iget-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->sendDeletplayer(ILjava/lang/String;)V

    const/4 v0, -0x3

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, v2, v2}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v0, ""

    iput-object v4, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/t4game/RoleLogin;->input_state:I

    goto :goto_1
.end method

.method private drawLRArrow(IIIZ)V
    .locals 10

    const/4 v2, 0x0

    shr-int/lit8 v0, p3, 0x1

    sub-int v1, p1, v0

    const/16 v3, 0xd

    sub-int/2addr v1, v3

    add-int/2addr v0, p1

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    iget-byte v3, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    iget-byte v3, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    if-eqz p4, :cond_0

    iget-byte v3, p0, Lcom/t4game/RoleLogin;->MOVE_TIMER:B

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v1, v3

    add-int/2addr v0, v3

    move v7, v0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v3, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1, v3, v0, p2, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0, v1, v7, p2, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    move v3, v2

    move v8, p2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void

    :cond_0
    move v7, v0

    move v0, v1

    goto :goto_0
.end method

.method private getCurrentVerticalIndex(IIZ)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    sub-int v0, p2, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    sub-int v0, p2, v0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getDeleteRoleInputWindowAlert(Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165delete\u3002"

    :goto_0
    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->curStateOfSecurityPW:B

    iget-object v2, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const-string v0, "\u8bf7\u8f93\u51656~16\u4f4d\u9ad8\u7ea7\u5bc6\u7801"

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "\u5220\u9664\u89d2\u8272\u5c06\u65e0\u6cd5\u5bfb\u56de\uff0c\u8bf7\u8f93\u5165delete\u518d\u786e\u8ba4\u3002"

    goto :goto_0

    :cond_2
    const-string v0, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u60a8\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    goto :goto_1
.end method

.method private initAutoFlipSet()V
    .locals 2

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_TextBox;

    check-cast p0, Lcom/t4game/UI_TextBox;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    :cond_0
    return-void
.end method

.method private initCreateRoleBin()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/createRole.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->role_property:[Ljava/lang/String;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_FunctionItem;

    check-cast v0, Lcom/t4game/UI_FunctionItem;

    iget-object v3, p0, Lcom/t4game/RoleLogin;->role_property:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, v0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_FunctionItem;

    check-cast v0, Lcom/t4game/UI_FunctionItem;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/t4game/UI_FunctionItem;->fouceFont:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_TextBox;

    check-cast v0, Lcom/t4game/UI_TextBox;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v1

    check-cast v1, Lcom/t4game/UI_CommandButtom;

    check-cast v1, Lcom/t4game/UI_CommandButtom;

    const-string v2, "\u521b\u5efa"

    iput-object v2, v1, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->createRoleImg:Ljavax/microedition/lcdui/Image;

    if-nez v1, :cond_1

    const-string v1, "/loading1.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/RoleLogin;->createRoleImg:Ljavax/microedition/lcdui/Image;

    :cond_1
    iget-object v1, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    if-nez v1, :cond_2

    const-string v1, "/sysui/ui/arrow.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    :cond_2
    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initAutoFlipSet()V

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    iget-short v2, v0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v1, v2

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_TextBox;->h:S

    return-void
.end method

.method private initTicker()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/RoleLogin;->ticker_leng_per:I

    iput v1, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    iput v1, p0, Lcom/t4game/RoleLogin;->ticker_text_leng:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/RoleLogin;->ticker_isend:Z

    return-void
.end method

.method private onPressedCreateRole(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->focus:B

    iput v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    :cond_2
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ne v0, v6, :cond_1

    :cond_3
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    :cond_4
    :goto_1
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-gt v0, v3, :cond_5

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v2, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_5
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ne v0, v3, :cond_1

    :cond_6
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->SEX_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p0, v2, v0, v4}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iput-object v2, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    :cond_a
    iput-object v2, p0, Lcom/t4game/RoleLogin;->createRoleImg:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendCreatePlayerMessage()V

    const/4 v0, -0x3

    invoke-virtual {p0, v0, v5}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/t4game/Defaults;->isQuickRegist:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    sput-boolean v5, Lcom/t4game/Defaults;->lockKeyPress:Z

    sput-boolean v4, Lcom/t4game/Defaults;->isQuickRegist:Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iput-object v2, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    :cond_c
    invoke-virtual {p0, v4, v5}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p0, v2, v0, v4}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_4
    .end sparse-switch
.end method

.method private onPressedCreateRoleWindowKey(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->onPressedCreateRole(I)V

    return-void
.end method

.method private onPressedOfAlertBox(I)V
    .locals 3

    const/4 v2, -0x4

    const/4 v1, 0x1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_3

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_2

    iget v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    iget-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->sendDeletplayer(ILjava/lang/String;)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private onPressedOfInputBox(I)V
    .locals 6

    const/4 v1, -0x5

    const/4 v5, 0x0

    const-string v3, ""

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    iget-boolean v0, v0, Lcom/t4game/Texter;->inputed:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_4

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->curStateOfSecurityPW:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    new-instance v0, Lcom/t4game/RoleLogin$inputForm;

    const-string v2, "\u8bf7\u8f93\u5165delete"

    const-string v1, ""

    const/4 v4, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/RoleLogin$inputForm;-><init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/t4game/RoleLogin$inputForm;

    const-string v2, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801"

    const-string v1, ""

    const/16 v4, 0x10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/RoleLogin$inputForm;-><init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->deletRole()V

    goto :goto_1

    :cond_4
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, v5, v5}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v0, ""

    iput-object v3, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    goto :goto_1
.end method

.method private onPressedPlayerRoleListWindowKey(I)V
    .locals 6

    const/4 v5, -0x5

    const/4 v4, -0x6

    const/4 v3, -0x7

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->onPressedPlayerRoleListWindowKey_0state(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->onPressedPlayerRoleListWindowKey_1state(I)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    if-eq p1, v4, :cond_3

    if-eq p1, v5, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :cond_4
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-ne p1, v3, :cond_0

    :cond_7
    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    goto :goto_0
.end method

.method private onPressedPlayerRoleListWindowKey_0state(I)V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->getCurrentIndexUPDN(III)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-static {v0, v1, p1}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/t4game/MiniPlayer;->is_roll_name_illegal:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->player_role_list_forbiden:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    :goto_1
    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->PlayerRoleListWindow_1state_list:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    const/4 v0, -0x3

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    sput-boolean v2, Lcom/t4game/Defaults;->lockKeyPress:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPressedPlayerRoleListWindowKey_1state(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iput-object v3, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v2, v0, Lcom/t4game/MiniPlayer;->is_roll_name_illegal:Z

    if-eqz v2, :cond_7

    if-nez v1, :cond_3

    invoke-virtual {p0, v3, v3, v5}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_4

    iput-byte v7, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    goto :goto_0

    :cond_4
    if-ne v1, v6, :cond_5

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/t4game/MiniPlayer;->intId:I

    iput v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->setEnglishLock()V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, v4, v4}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    invoke-direct {p0, v4}, Lcom/t4game/RoleLogin;->getDeleteRoleInputWindowAlert(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v1, v7, :cond_0

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    invoke-virtual {p0, v5, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    if-eqz v0, :cond_0

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEID:B

    iget v3, v0, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLENAME:B

    iget-object v3, v0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEJOB:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->job:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLESEX:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->sex:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLECONTRY:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->countryId:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLELEVEL:B

    iget-short v0, v0, Lcom/t4game/MiniPlayer;->grade:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v3, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v4, Lcom/t4game/Defaults;->ROLEID:B

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendJoinGameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendClientIdOfGT()Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->getSysTime()V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v5, :cond_9

    sget-boolean v2, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/t4game/MiniPlayer;->intId:I

    iput v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->setEnglishLock()V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, v4, v4}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    invoke-direct {p0, v4}, Lcom/t4game/RoleLogin;->getDeleteRoleInputWindowAlert(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    if-ne v1, v6, :cond_0

    sget-boolean v0, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v0, :cond_0

    move v1, v4

    :goto_3
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    invoke-virtual {p0, v5, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    iput-byte v6, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    goto/16 :goto_0
.end method

.method private onPressedwaitingWindowKey(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x5

    const/4 v3, 0x0

    const/4 v2, -0x3

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-lez v0, :cond_1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v5, :cond_2

    iput-boolean v4, p0, Lcom/t4game/RoleLogin;->runing:Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->quitApp()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_5

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/t4game/RoleLogin;->getFocusedRoll()Lcom/t4game/MiniPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEID:B

    iget v3, v0, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLENAME:B

    iget-object v3, v0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEJOB:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->job:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLESEX:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->sex:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLECONTRY:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->countryId:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLELEVEL:B

    iget-short v0, v0, Lcom/t4game/MiniPlayer;->grade:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    invoke-virtual {p0}, Lcom/t4game/RoleLogin;->done()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_4
    invoke-virtual {p0, v3, v3, v6}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v6, :cond_6

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, -0x7

    if-eq p1, v0, :cond_8

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_1

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    :cond_9
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    iput-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    invoke-virtual {p0, v4}, Lcom/t4game/RoleLogin;->sendGetPlayerListMessage(Z)V

    invoke-virtual {p0, v2, v5}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0
.end method

.method private paintCreateRole(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->paintCreateRole_state()V

    :cond_0
    return-void
.end method

.method private paintCreateRole_state()V
    .locals 27

    const-string v5, "\u521b\u5efa\u89d2\u8272"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v5

    check-cast v5, Lcom/t4game/UI_TextBox;

    check-cast v5, Lcom/t4game/UI_TextBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    const v7, 0x52ff02

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    iget-short v7, v5, Lcom/t4game/UI_TextBox;->x:S

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    iget-short v8, v5, Lcom/t4game/UI_TextBox;->y:S

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iget-short v9, v5, Lcom/t4game/UI_TextBox;->w:S

    add-int/lit8 v9, v9, 0xe

    iget-short v5, v5, Lcom/t4game/UI_TextBox;->h:S

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v7, v8, v9, v5}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_0
    const/16 v19, 0x46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v5

    check-cast v5, Lcom/t4game/UI_FunctionItem;

    check-cast v5, Lcom/t4game/UI_FunctionItem;

    iget-short v5, v5, Lcom/t4game/UI_FunctionItem;->x:S

    add-int/lit8 v5, v5, 0x4b

    div-int/lit8 v6, v19, 0x2

    add-int v20, v5, v6

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0xa0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v5

    check-cast v5, Lcom/t4game/UI_CommandButtom;

    check-cast v5, Lcom/t4game/UI_CommandButtom;

    move-object v0, v5

    iget-short v0, v0, Lcom/t4game/UI_CommandButtom;->x:S

    move/from16 v22, v0

    const/16 v10, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v5

    check-cast v5, Lcom/t4game/UI_FunctionItem;

    check-cast v5, Lcom/t4game/UI_FunctionItem;

    iget-short v8, v5, Lcom/t4game/UI_FunctionItem;->y:S

    add-int/lit8 v23, v8, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x3

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v7, v0

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v7

    check-cast v7, Lcom/t4game/UI_FunctionItem;

    check-cast v7, Lcom/t4game/UI_FunctionItem;

    iget-short v7, v7, Lcom/t4game/UI_FunctionItem;->x:S

    add-int/lit8 v7, v7, 0x2d

    const/16 v9, 0x78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v11, v0

    iget-byte v11, v11, Lcom/t4game/GameUi;->focus:B

    const/4 v12, 0x3

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->paintWordInput_haveFocuse(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V

    add-int/lit8 v5, v8, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v6, v0

    iget-byte v6, v6, Lcom/t4game/GameUi;->focus:B

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v5

    move/from16 v3, v19

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/RoleLogin;->drawLRArrow(IIIZ)V

    add-int/lit8 v5, v23, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v6, v0

    iget-byte v6, v6, Lcom/t4game/GameUi;->focus:B

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v5

    move/from16 v3, v19

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/RoleLogin;->drawLRArrow(IIIZ)V

    add-int/lit8 v5, v23, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v6, v0

    iget-byte v6, v6, Lcom/t4game/GameUi;->focus:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v5

    move/from16 v3, v19

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/RoleLogin;->drawLRArrow(IIIZ)V

    sget-boolean v5, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v5, :cond_9

    const/16 v13, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    if-nez v5, :cond_6

    const v5, 0x52ff02

    move/from16 v17, v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v9, v0

    sget-object v5, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    aget-object v10, v5, v24

    shr-int/lit8 v5, v13, 0x1

    sub-int v11, v20, v5

    sget v14, Lcom/t4game/Defaults;->sfh:I

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v18, 0x1

    move/from16 v12, v23

    invoke-static/range {v9 .. v18}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const v5, 0x52ff02

    move/from16 v17, v5

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v9, v0

    sget-object v5, Lcom/t4game/CommonConstants;->SEX_NAMES:[Ljava/lang/String;

    aget-object v10, v5, v25

    shr-int/lit8 v5, v13, 0x1

    sub-int v11, v21, v5

    sget v14, Lcom/t4game/Defaults;->sfh:I

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v18, 0x1

    move v12, v8

    invoke-static/range {v9 .. v18}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const v5, 0x52ff02

    move/from16 v17, v5

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v9, v0

    sget-object v5, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    aget-object v10, v5, v26

    shr-int/lit8 v5, v13, 0x1

    sub-int v11, v21, v5

    sget v14, Lcom/t4game/Defaults;->sfh:I

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v18, 0x1

    move/from16 v12, v23

    invoke-static/range {v9 .. v18}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_6
    sget-object v6, Lcom/t4game/Defaults;->jobIcon:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v7, v22, 0x50

    mul-int/lit8 v9, v24, 0x18

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/16 v12, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v13, v0

    invoke-static/range {v6 .. v13}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x0

    if-nez v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    move-object v5, v0

    mul-int/lit8 v6, v24, 0x2

    aget-object v5, v5, v6

    move-object v13, v5

    :goto_7
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v10, v0

    add-int/lit8 v11, v22, 0x1e

    add-int/lit8 v12, v8, 0x14

    const/4 v14, 0x3

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/t4game/RoleLogin;->paintPlayerRoleOne(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/MiniPlayer;B)V

    :cond_1
    const/4 v5, 0x0

    const-string v6, "\u8fd4\u56de"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v7, v0

    const/4 v9, 0x3

    aget-object v7, v7, v9

    const/4 v9, 0x0

    div-int/lit8 v10, v19, 0x2

    sub-int v10, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    aput v10, v7, v9

    aput v10, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v7, v0

    const/4 v9, 0x2

    aget-object v7, v7, v9

    const/4 v9, 0x0

    div-int/lit8 v10, v19, 0x2

    sub-int v10, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->arrowImg:Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    aput v10, v7, v9

    aput v10, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v7, v0

    const/4 v9, 0x1

    aget-object v7, v7, v9

    const/4 v9, 0x1

    aput v8, v7, v9

    aput v8, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    move-object v7, v0

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aput v23, v7, v8

    aput v23, v5, v6

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/16 v8, 0x28

    sget v9, Lcom/t4game/Defaults;->sfh:I

    invoke-static {v5, v6, v7, v8, v9}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/t4game/RoleLogin;->autoFlip()V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_6
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move/from16 v17, v5

    goto/16 :goto_3

    :cond_7
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move/from16 v17, v5

    goto/16 :goto_4

    :cond_8
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move/from16 v17, v5

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    if-nez v5, :cond_a

    const v5, 0x52ff02

    move v14, v5

    :goto_8
    sget-object v5, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    aget-object v9, v5, v24

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v15, v0

    move/from16 v10, v20

    move/from16 v11, v23

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const v5, 0x52ff02

    move v11, v5

    :goto_9
    sget-object v5, Lcom/t4game/CommonConstants;->SEX_NAMES:[Ljava/lang/String;

    aget-object v6, v5, v25

    sget v9, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v12, v0

    move/from16 v7, v21

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    move-object v5, v0

    iget-byte v5, v5, Lcom/t4game/GameUi;->focus:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    const v5, 0x52ff02

    move v14, v5

    :goto_a
    sget-object v5, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    aget-object v9, v5, v26

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move-object v15, v0

    move/from16 v10, v21

    move/from16 v11, v23

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    :cond_a
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move v14, v5

    goto :goto_8

    :cond_b
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move v11, v5

    goto :goto_9

    :cond_c
    sget v5, Lcom/t4game/Defaults;->C_DRAW_LINE:I

    move v14, v5

    goto :goto_a

    :cond_d
    const/4 v6, 0x1

    move/from16 v0, v25

    move v1, v6

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    move-object v5, v0

    mul-int/lit8 v6, v24, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v13, v5

    goto/16 :goto_7

    :cond_e
    move-object v13, v5

    goto/16 :goto_7
.end method

.method private paintCurrentSelected(IIIII)V
    .locals 7

    sget-object v0, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    aget-object v0, v0, v1

    add-int/lit8 v2, p2, 0xb

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    move v1, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method private paintInput(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintInput(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/t4game/RoleLogin;->input_state:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/t4game/RoleLogin;->getDeleteRoleInputWindowAlert(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/t4game/RoleLogin;->paintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private paintInputBox(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 5

    const/4 v2, 0x2

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    if-ne v0, v2, :cond_0

    const/16 v0, 0x20

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->currentTick:B

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v4}, Lcom/t4game/Texter;->getFcous()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    const v2, 0xffffff

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v2, v0, v1

    add-int v3, v0, v1

    add-int/lit8 v4, p2, 0x14

    invoke-virtual {p1, v2, p2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x14

    invoke-virtual {p1, v2, p2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_0
    return-void
.end method

.method private paintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x28

    const/16 v3, 0x14

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->msg_frame:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->msg_frame:B

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->msg_frame:B

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const v0, 0x3c0008

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v1, v4

    invoke-virtual {p1, v3, v0, v1, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0xa

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v0, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    iput-byte v2, p0, Lcom/t4game/RoleLogin;->msg_frame:B

    iput v2, p0, Lcom/t4game/RoleLogin;->input_state:I

    goto :goto_0
.end method

.method private paintPlayerInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    sget-object v1, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/MiniPlayer;->countryId:B

    aget-object v10, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v2, p0, Lcom/t4game/MiniPlayer;->grade:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/MiniPlayer;->job:B

    aget-object v11, v1, v2

    const v1, 0xffc700

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v1, "\u540d\u79f0:"

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    const/16 v2, 0xb2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int v5, v2, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v3, v9

    move v4, v1

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x2

    add-int v5, v2, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v3, v11

    move v4, v1

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x3

    add-int v5, v2, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0xffc700

    move-object v3, v10

    move v4, v1

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    goto :goto_0
.end method

.method private paintPlayerRoleListWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x3

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow_0state(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->fengting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->fengStr:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    :cond_1
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow_1state(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow_1state(Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u89d2\u8272\u5df2\u6ee1\uff01"

    invoke-static {p1, v0, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow_1state(Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u60a8\u7684\u540d\u5b57\u4e0d\u7b26\u5408\u89c4\u8303\u8bf7\u5148\u4fee\u6539\u540d\u79f0\uff01"

    invoke-static {p1, v0, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private paintPlayerRoleListWindow_0state(Ljavax/microedition/lcdui/Graphics;)V
    .locals 23

    const-string v5, "\u89d2\u8272\u5217\u8868"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x0

    const-string v6, "\u8fd4\u56de"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x3

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const-string v7, "\u8fd4\u56de"

    invoke-static {v7}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    sget v7, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v8, 0x20

    sub-int/2addr v7, v8

    sget-object v8, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const-string v9, "\u8fd4\u56de"

    invoke-virtual {v8, v9}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    const/16 v9, 0x20

    invoke-static {v5, v6, v7, v8, v9}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/4 v6, 0x6

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v8, 0xa0

    sub-int/2addr v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0xa0

    const/16 v10, 0x8c

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/4 v6, 0x6

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v8, 0xa0

    sub-int/2addr v7, v8

    const/16 v8, 0xa8

    const/16 v9, 0xa0

    sget v10, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v11, 0x1c

    sub-int/2addr v10, v11

    const/16 v11, 0x20

    sub-int/2addr v10, v11

    const/16 v11, 0x8c

    sub-int/2addr v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v6, 0x1c

    sub-int/2addr v5, v6

    const/16 v6, 0x20

    sub-int/2addr v5, v6

    const/16 v6, 0xc8

    sub-int/2addr v5, v6

    div-int/lit8 v17, v5, 0x3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v8, 0x1c

    sget v9, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v10, 0xa0

    sub-int/2addr v9, v10

    sget v10, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v11, 0x1c

    sub-int/2addr v10, v11

    const/16 v11, 0x20

    sub-int/2addr v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v18, v5, 0x1

    const/16 v8, 0x1f

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0x15

    const/4 v7, 0x3

    add-int/lit8 v9, v18, 0x14

    sget v10, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v10, v10, 0x5

    add-int/2addr v9, v10

    sget v10, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x3

    sub-int/2addr v9, v10

    const/16 v10, 0x1e

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0x15

    add-int/lit8 v7, v18, 0x14

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v9, v9, 0x5

    add-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v9, v9, 0x3

    const/16 v10, 0x1e

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0x15

    add-int/lit8 v7, v18, 0x14

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v10, 0xa0

    sub-int/2addr v9, v10

    add-int/lit8 v10, v18, 0x14

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    sget v10, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    const/4 v10, 0x3

    sub-int/2addr v9, v10

    const/16 v10, 0x1e

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playIntro:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v5, v6

    add-int/lit8 v5, v18, 0x14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v5, v7

    shr-int/lit8 v7, v5, 0x1

    sget v9, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v10, 0xffc700

    const v11, 0xffc700

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playIntro:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    add-int/lit8 v5, v18, 0x14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x3

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    sget v9, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v10, 0xffc700

    const v11, 0xffc700

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playIntro:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v6, v5, v6

    add-int/lit8 v5, v18, 0x14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v9, 0xa0

    sub-int/2addr v7, v9

    add-int/lit8 v9, v18, 0x14

    sget v10, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    sub-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    sget v9, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v10, 0xffc700

    const v11, 0xffc700

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v5, v8

    sget v6, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v6, v5

    const/16 v7, 0x20

    sub-int/2addr v6, v7

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    shr-int/lit8 v19, v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v20

    const/4 v6, 0x0

    move/from16 v21, v6

    move v8, v5

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/t4game/MiniPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v5

    :goto_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    move v5, v0

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_0

    const v5, 0x14899a

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v5, 0x5

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0xaa

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int v7, v19, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x5

    sget v9, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v10, 0xaa

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    sub-int v10, v19, v10

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int v5, v19, v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v8

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v9

    const/4 v10, 0x6

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0xa0

    sub-int v11, v6, v7

    const/16 v12, 0xa8

    const/16 v13, 0xa0

    sget v6, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v7, 0x1c

    sub-int/2addr v6, v7

    const/16 v7, 0x20

    sub-int/2addr v6, v7

    const/16 v7, 0x8c

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int v14, v6, v7

    invoke-virtual/range {v9 .. v14}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v6, v7, v9, v10, v11}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v6, v7, v9, v10, v11}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    :cond_1
    const-string v9, "\u521b\u5efa\u65b0\u89d2\u8272"

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0xaa

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v6, 0x5

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v13, 0xffc700

    const v14, 0xffc700

    move v11, v5

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int v5, v8, v19

    :goto_2
    add-int/lit8 v6, v21, 0x1

    move/from16 v21, v6

    move v8, v5

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/4 v5, 0x0

    move-object/from16 v22, v5

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_3

    const/16 v6, 0x18

    sget-object v7, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    sget-object v9, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->job:B

    move v10, v0

    aget-object v9, v9, v10

    invoke-virtual {v7, v9}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    sget v9, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v10, 0x50

    sub-int/2addr v9, v10

    shr-int/lit8 v7, v7, 0x1

    sub-int v10, v9, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v7, 0x1c

    sget-object v9, Lcom/t4game/Defaults;->jobIcon:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->job:B

    move v7, v0

    mul-int/lit8 v12, v7, 0x18

    const/4 v13, 0x0

    const/16 v14, 0x18

    const/16 v15, 0x18

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v7, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->job:B

    move v9, v0

    aget-object v9, v7, v9

    add-int/2addr v10, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v6, 0x1c

    sget v12, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v13, 0xffc700

    const v14, 0xffc700

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0xa0

    sub-int/2addr v6, v7

    add-int/lit8 v11, v6, 0x50

    const/16 v12, 0x6c

    const/4 v14, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, v22

    invoke-direct/range {v9 .. v14}, Lcom/t4game/RoleLogin;->paintPlayerRoleOne(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/MiniPlayer;B)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v9, v0

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x50

    sub-int v10, v6, v7

    const/16 v6, 0xa8

    sget v7, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v6, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    sub-int v11, v6, v7

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v13, 0xffc700

    const v14, 0xffc700

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_3
    const-string v9, "\u8fdb\u5165\u6e38\u620f"

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x50

    sub-int/2addr v6, v7

    const/16 v7, 0x3c

    sub-int v10, v6, v7

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xa8

    move v6, v0

    add-int/lit8 v11, v6, 0x5

    const/16 v12, 0x78

    const/16 v13, 0x1e

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v6, 0x1

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v9, 0x50

    sub-int/2addr v7, v9

    const/16 v9, 0x3c

    sub-int/2addr v7, v9

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xa8

    move v9, v0

    add-int/lit8 v9, v9, 0x5

    const/16 v10, 0x78

    const/16 v11, 0x1e

    invoke-static {v6, v7, v9, v10, v11}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const-string v9, "\u5220\u9664\u89d2\u8272"

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x50

    sub-int/2addr v6, v7

    const/16 v7, 0x3c

    sub-int v10, v6, v7

    mul-int/lit8 v6, v17, 0x2

    add-int/lit16 v6, v6, 0xc6

    add-int/lit8 v11, v6, 0x5

    const/16 v12, 0x78

    const/16 v13, 0x1e

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v6, 0x2

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v9, 0x50

    sub-int/2addr v7, v9

    const/16 v9, 0x3c

    sub-int/2addr v7, v9

    mul-int/lit8 v9, v17, 0x2

    add-int/lit16 v9, v9, 0xc6

    add-int/lit8 v9, v9, 0x5

    const/16 v10, 0x78

    const/16 v11, 0x1e

    invoke-static {v6, v7, v9, v10, v11}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/MiniPlayer;->drawHead(Ljavax/microedition/lcdui/Graphics;II)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    move-object v9, v0

    add-int/lit8 v10, v18, 0x14

    sget v12, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v13, 0xffc700

    const v14, 0xffc700

    move v11, v5

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/t4game/MiniPlayer;->grade:S

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u7ea7"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v6, v18, 0x14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x5

    add-int v10, v6, v7

    sget v12, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v13, 0xffc700

    const v14, 0xffc700

    move v11, v5

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v6, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->countryId:B

    move v7, v0

    aget-object v9, v6, v7

    add-int/lit8 v6, v18, 0x14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v7, v7, 0x8

    add-int v10, v6, v7

    sget v12, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v13, 0xffc700

    const v14, 0xffc700

    move v11, v5

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int v5, v8, v19

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method private paintPlayerRoleListWindow_1state(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow_0state(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method private paintPlayerRoleOne(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/MiniPlayer;B)V
    .locals 6

    if-eqz p4, :cond_0

    const/4 v4, 0x2

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/MiniPlayer;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_0
    return-void
.end method

.method private paintRoleInfo(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/MiniPlayer;IZ)V
    .locals 17

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    move-object v12, v0

    sget-object v4, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->countryId:B

    move v5, v0

    aget-object v14, v4, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-short v0, v0, Lcom/t4game/MiniPlayer;->grade:S

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u7ea7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->job:B

    move v5, v0

    aget-object v16, v4, v5

    const/16 v9, 0x18

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/MiniPlayer;->drawHead(Ljavax/microedition/lcdui/Graphics;II)V

    sget-object v4, Lcom/t4game/Defaults;->jobIcon:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, 0x14

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/t4game/MiniPlayer;->job:B

    move v7, v0

    mul-int/2addr v7, v9

    const/4 v8, 0x0

    move v10, v9

    move-object/from16 v11, p1

    invoke-static/range {v4 .. v11}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const v4, 0xffc700

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-eqz p6, :cond_0

    add-int/lit8 v6, p2, 0x19

    add-int/lit8 v7, p3, 0x2

    invoke-static {v12}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v8

    sget v9, Lcom/t4game/Defaults;->sfh:I

    const/16 v10, 0xa

    const/4 v11, -0x1

    const/4 v13, 0x1

    move-object/from16 v4, p1

    move-object v5, v12

    move/from16 v12, p5

    invoke-static/range {v4 .. v13}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_0
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xdc

    move v5, v0

    add-int/lit8 v6, p3, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, v14

    move/from16 v9, p5

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v5, p2, 0x19

    add-int/lit8 v6, p3, 0x19

    const/4 v7, 0x0

    const/4 v8, -0x1

    const v9, 0xffffff

    move-object/from16 v4, v16

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v5, p2, 0x78

    add-int/lit8 v6, p3, 0x19

    const/4 v7, 0x0

    const/4 v8, -0x1

    const v9, 0xffffff

    move-object v4, v15

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    if-eqz p6, :cond_1

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v5, v0

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xdc

    move v6, v0

    add-int/lit8 v7, p3, 0x19

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v4, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v8, v4, 0x3

    sget v9, Lcom/t4game/Defaults;->sfh:I

    const/16 v10, 0xa

    const/4 v11, -0x1

    const v12, 0xffffff

    const/4 v13, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v5, p2, 0x19

    add-int/lit8 v6, p3, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, v12

    move/from16 v9, p5

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xdc

    move v5, v0

    add-int/lit8 v6, p3, 0x19

    const/4 v7, 0x0

    const/4 v8, -0x1

    const v9, 0xffffff

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    move-object v4, v0

    goto :goto_2
.end method

.method private paintTextRows(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V
    .locals 11

    const/4 v7, 0x5

    const/4 v8, 0x5

    mul-int/lit8 v0, v7, 0x2

    sub-int v0, p5, v0

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p2, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    move v0, p3

    move v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    array-length v0, v9

    if-ge v10, v0, :cond_0

    aget-object v0, v9, v10

    add-int v1, p3, v7

    add-int v2, p4, v8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v10

    add-int/2addr v2, v3

    const/16 v3, 0x14

    const/4 v4, -0x1

    const v5, 0xfbaf5d

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private paintTicker(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V
    .locals 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->ticker_text_leng:I

    iget v0, p0, Lcom/t4game/RoleLogin;->ticker_text_leng:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/t4game/RoleLogin;->ticker_isend:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    iget v0, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput v3, p0, Lcom/t4game/RoleLogin;->ticker_frame:I

    iget v0, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    iget v1, p0, Lcom/t4game/RoleLogin;->ticker_leng_per:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    :cond_0
    iget v0, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    iget v1, p0, Lcom/t4game/RoleLogin;->ticker_text_leng:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, p3, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p1, p3, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/t4game/RoleLogin;->ticker_leng_off:I

    sub-int v1, v0, v1

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sub-int v0, p6, v0

    div-int/lit8 v0, v0, 0x2

    add-int v2, p4, v0

    move-object v0, p2

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v3, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    iput-boolean v3, p0, Lcom/t4game/RoleLogin;->ticker_isend:Z

    goto :goto_0
.end method

.method private paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/t4game/DraftingUtil;->paintLoading(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x688

    invoke-static {v4, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    const v0, 0xffffff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, ""

    iget v1, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_10

    const-string v0, "\u7f51\u7edc\u4e2d\u65ad\uff01"

    move-object v1, v0

    move v0, v4

    :goto_1
    iget-byte v2, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_f

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v0, v6, :cond_f

    :cond_4
    invoke-static {p1, v1, v6}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v4, :cond_5

    const/4 v2, -0x5

    invoke-virtual {p0, v5, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v3, :cond_6

    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v6, :cond_3

    const-string v0, "\u7248\u672c\u592a\u4f4e"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :sswitch_1
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v4, :cond_7

    invoke-virtual {p0, v5, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v3, :cond_8

    const-string v0, "\u89d2\u8272\u540d\u5df2\u5b58\u5728\uff0c\u8bf7\u53e6\u6362\u4e00\u4e2a\uff01"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v6, :cond_9

    const-string v0, "\u521b\u5efa\u5931\u8d25"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_9
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v7, :cond_3

    const-string v0, "\u8be5\u89d2\u8272\u540d\u4e0d\u80fd\u6ce8\u518c\uff0c\u8bf7\u53e6\u6362\u4e00\u4e2a\uff01"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :sswitch_2
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v4, :cond_a

    const/4 v1, -0x3

    invoke-virtual {p0, v5, v1}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    const-string v1, "\u5220\u9664\u6210\u529f"

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v3, :cond_b

    const-string v0, "\u5220\u9664\u5931\u8d25"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_b
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v6, :cond_c

    const-string v0, "\u89d2\u8272\u540d\u4e3a\u7a7a\u6216\u8d85\u8fc7\u957f\u5ea6\u9650\u5236\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_c
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-ne v2, v7, :cond_d

    const-string v0, "\u89d2\u8272\u540d\u4e2d\u6709\u975e\u6cd5\u5b57\u7b26\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f"

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_d
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    const-string v0, "\u89d2\u8272\u540d\u5df2\u5b58\u5728\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f"

    move-object v1, v0

    move v0, v4

    goto/16 :goto_2

    :cond_e
    iget v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    const-string v0, "\u4fee\u6539\u89d2\u8272\u540d\u6210\u529f\u662f\u5426\u767b\u5f55\uff1f"

    move-object v1, v0

    move v0, v4

    goto/16 :goto_2

    :cond_f
    invoke-static {p1, v1, v5}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_0

    :cond_10
    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method private pointerCreateRole()V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->pointerInArea([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1, v4}, Lcom/t4game/RoleLogin;->showForm(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->pointerInArea([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1, v5}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v2, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v4}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->pointerInArea([I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->SEX_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1, v5}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v2, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v6}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->createRolePointer:[[I

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->pointerInArea([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    sget-object v1, Lcom/t4game/CommonConstants;->NATION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1, v5}, Lcom/t4game/Util;->getCurrentIndexLFRT(III)I

    move-result v0

    iput v0, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v2, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_3
    invoke-static {v3}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedCreateRole(I)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->focus:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedCreateRole(I)V

    :cond_5
    return-void
.end method

.method private pointerCreateRoleWindowKey()V
    .locals 0

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerCreateRole()V

    return-void
.end method

.method private pointerInArea([I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget v0, p1, v6

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    aget v2, p1, v7

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private pointerOfAlertBox()V
    .locals 3

    const/4 v2, -0x4

    const/4 v1, 0x1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_2

    iget v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    iget-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->sendDeletplayer(ILjava/lang/String;)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    invoke-virtual {p0, v0, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private pointerOfInputBox()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, ""

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget-object v2, Lcom/t4game/DraftingUtil;->inputArea:[I

    invoke-static {v0, v1, v2}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->curStateOfSecurityPW:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_3

    new-instance v0, Lcom/t4game/RoleLogin$inputForm;

    const/16 v1, 0x66e

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v4, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/RoleLogin$inputForm;-><init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    :cond_0
    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget-object v2, Lcom/t4game/DraftingUtil;->commandArea:[[I

    aget-object v2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedOfInputBox(I)V

    :cond_1
    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget-object v2, Lcom/t4game/DraftingUtil;->commandArea:[[I

    aget-object v2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedOfInputBox(I)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/t4game/RoleLogin$inputForm;

    const/16 v1, 0x66f

    invoke-static {v6, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/16 v4, 0x10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/RoleLogin$inputForm;-><init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    goto :goto_0
.end method

.method private pointerPlayerRoleListWindowKey(I)V
    .locals 3

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerPlayerRoleListWindowKey_0state()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerPlayerRoleListWindowKey_1state()V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    goto :goto_0
.end method

.method private pointerPlayerRoleListWindowKey_0state()V
    .locals 13

    const/4 v3, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1c

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int v4, v1, v2

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v4

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    shr-int/lit8 v7, v1, 0x2

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/t4game/MiniPlayer;

    move-object v9, v0

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v6, 0xaa

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v7, 0x4

    invoke-static/range {v1 .. v8}, Lcom/t4game/PointerUtil;->getPointerMenuIndex(IIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerMenuIndex:I

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerStart:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerStart:B

    invoke-static {v1, v12, v12, v2}, Lcom/t4game/PointerUtil;->scrollList(IIII)B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/RoleLogin;->playerStart:B

    if-nez v9, :cond_0

    iget v1, p0, Lcom/t4game/RoleLogin;->lastplayerRoleListWindow_focus:I

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    invoke-virtual {p0, v10, v8}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    :cond_0
    iget v1, p0, Lcom/t4game/RoleLogin;->lastplayerRoleListWindow_focus:I

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    if-eq v1, v2, :cond_6

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    iput v1, p0, Lcom/t4game/RoleLogin;->lastplayerRoleListWindow_focus:I

    :cond_1
    :goto_0
    invoke-static {v10}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v10}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/MiniPlayer;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/RoleLogin;->PlayerRoleListWindow_1state_list:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    iput-byte v10, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    if-eqz v9, :cond_2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEID:B

    iget v3, v9, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLENAME:B

    iget-object v3, v9, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEJOB:B

    iget-byte v3, v9, Lcom/t4game/MiniPlayer;->job:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLESEX:B

    iget-byte v3, v9, Lcom/t4game/MiniPlayer;->sex:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLECONTRY:B

    iget-byte v3, v9, Lcom/t4game/MiniPlayer;->countryId:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLELEVEL:B

    iget-short v3, v9, Lcom/t4game/MiniPlayer;->grade:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-byte v8, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v11

    sget-object v3, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v3, v3, v10

    sget-object v4, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v5, Lcom/t4game/Defaults;->ROLEID:B

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendJoinGameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1}, Lcom/t4game/GameWorld;->sendClientIdOfGT()Z

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v2, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v1, v2}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_2
    invoke-static {v11}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v11}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v9, :cond_3

    iget v1, v9, Lcom/t4game/MiniPlayer;->intId:I

    iput v1, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1}, Lcom/t4game/Texter;->setEnglishLock()V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1, v8, v8}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {p0, v11, v8}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    const-string v1, "\u5220\u9664\u89d2\u8272\u5c06\u65e0\u6cd5\u5bfb\u56de\uff0c\u8bf7\u8f93\u5165delete\u518d\u786e\u8ba4\u3002"

    iput-object v1, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/t4game/RoleLogin;->blnComfirmed:Z

    if-eqz v1, :cond_8

    :cond_4
    iput-boolean v8, p0, Lcom/t4game/RoleLogin;->blnComfirmed:Z

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/MiniPlayer;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/RoleLogin;->PlayerRoleListWindow_1state_list:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    iput-byte v10, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :cond_5
    :goto_1
    return-void

    :cond_6
    iput-boolean v10, p0, Lcom/t4game/RoleLogin;->blnComfirmed:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/t4game/RoleLogin;->lastplayerRoleListWindow_focus:I

    goto/16 :goto_0

    :cond_7
    sget-boolean v1, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    const/4 v1, -0x3

    invoke-virtual {p0, v1, v10}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/t4game/GameWorld;->setState(B)V

    sput-boolean v10, Lcom/t4game/Defaults;->lockKeyPress:Z

    :cond_9
    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    goto :goto_1
.end method

.method private pointerPlayerRoleListWindowKey_1state()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v1, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v1}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEID:B

    iget v3, v0, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLENAME:B

    iget-object v3, v0, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLEJOB:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->job:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLESEX:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->sex:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLECONTRY:B

    iget-byte v3, v0, Lcom/t4game/MiniPlayer;->countryId:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLELEVEL:B

    iget-short v0, v0, Lcom/t4game/MiniPlayer;->grade:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v6

    sget-object v3, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v4, Lcom/t4game/Defaults;->ROLEID:B

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendJoinGameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendClientIdOfGT()Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_4

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/t4game/MiniPlayer;->intId:I

    iput v0, p0, Lcom/t4game/RoleLogin;->deleteRoleId:I

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->setEnglishLock()V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->clearInput()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, v4, v4}, Lcom/t4game/Texter;->setInputModeViewXY(II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    const-string v0, "\u5220\u9664\u89d2\u8272\u5c06\u65e0\u6cd5\u5bfb\u56de\uff0c\u8bf7\u8f93\u5165delete\u518d\u786e\u8ba4\u3002"

    iput-object v0, p0, Lcom/t4game/RoleLogin;->input_msg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    if-ne v1, v5, :cond_0

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->sendGET_ROLEORIGINAL_MESSAGE()V

    invoke-virtual {p0, v6, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iput-byte v5, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->setPointerAlert()V

    goto/16 :goto_0
.end method

.method private pointerwaitingWindowKey()V
    .locals 2

    iget v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/RoleLogin;->runing:Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->quitApp()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    const/4 v1, -0x3

    invoke-virtual {p0, v0, v1}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private processCREATE_ROLE_RSP_MESSAGE()V
    .locals 8

    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v5, :cond_6

    sput-boolean v5, Lcom/t4game/RoleLogin;->isCreateNewPlayer:Z

    iget v0, p0, Lcom/t4game/RoleLogin;->playerRoleNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/RoleLogin;->playerRoleNum:I

    new-instance v0, Lcom/t4game/MiniPlayer;

    invoke-direct {v0}, Lcom/t4game/MiniPlayer;-><init>()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    mul-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    :goto_0
    iget-object v2, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/t4game/MiniPlayer;->intId:I

    iget-object v2, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, Lcom/t4game/MiniPlayer;->countryId:B

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v1, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, Lcom/t4game/MiniPlayer;->sex:B

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v3, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    iget-object v2, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v3, v3, v2

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/t4game/MiniPlayer;->release()V

    :cond_1
    iget-object v3, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    :cond_5
    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v7

    iput v5, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    sget-object v2, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v3, Lcom/t4game/Defaults;->ROLEID:B

    iget v4, v1, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v2, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v3, Lcom/t4game/Defaults;->ROLENAME:B

    iget-object v4, v1, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v2, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v3, Lcom/t4game/Defaults;->ROLEJOB:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    sget-object v0, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLESEX:B

    iget-byte v3, v1, Lcom/t4game/MiniPlayer;->sex:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v0, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLECONTRY:B

    iget-byte v3, v1, Lcom/t4game/MiniPlayer;->countryId:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v0, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->ROLELEVEL:B

    iget-short v1, v1, Lcom/t4game/MiniPlayer;->grade:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v3, Lcom/t4game/Defaults;->playerInfo:[Ljava/lang/String;

    sget-byte v4, Lcom/t4game/Defaults;->ROLEID:B

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendJoinGameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendClientIdOfGT()Z

    :goto_3
    return-void

    :cond_6
    if-ne v0, v2, :cond_7

    iput v6, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_3

    :cond_7
    if-ne v0, v6, :cond_8

    iput v7, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_3

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iput v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_3

    :cond_9
    iput v7, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_3
.end method

.method private processGET_ROLELIST_RSP_MESSAGE()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->roleList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    move v0, v3

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/t4game/LoginPlayerData;

    invoke-direct {v0}, Lcom/t4game/LoginPlayerData;-><init>()V

    iget-object v1, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1}, Lcom/t4game/LoginPlayerData;->initHadMiniPlayer(Lcom/t4game/IoBuffer;)V

    invoke-virtual {v0}, Lcom/t4game/LoginPlayerData;->getHadMiniPlayer()[Lcom/t4game/MiniPlayer;

    move-result-object v0

    move v1, v3

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_2

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_2
.end method

.method private processUIKeyEvent()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->fengting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->fengting:Z

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedOfAlertBox(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedPlayerRoleListWindowKey(I)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedCreateRoleWindowKey(I)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedwaitingWindowKey(I)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->onPressedOfInputBox(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private proressGET_ROLEORIGINAL_RSP_MESSAGE()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v6, :cond_0

    new-instance v0, Lcom/t4game/LoginPlayerData;

    invoke-direct {v0}, Lcom/t4game/LoginPlayerData;-><init>()V

    iget-object v1, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1}, Lcom/t4game/LoginPlayerData;->initCreateMiniPlayer(Lcom/t4game/IoBuffer;)V

    invoke-virtual {v0}, Lcom/t4game/LoginPlayerData;->getCreateMiniPlayer()[Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    iput v5, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iput v5, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    iget v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    iget v1, p0, Lcom/t4game/RoleLogin;->menuHorizontalIndex:I

    invoke-direct {p0, v0, v1}, Lcom/t4game/RoleLogin;->setCurInfo(II)V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initTicker()V

    iput v6, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    iput-byte v5, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_state:B

    :goto_0
    return-void

    :cond_0
    iput v7, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_0
.end method

.method private sendCreatePlayerMessage()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iput v3, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method private sendDeletplayer(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method private sendGET_ROLEORIGINAL_MESSAGE()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method private setCurInfo(II)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string v0, "\u540d\u5b57\u53ef\u7531\u5b57\u6bcd\u3001\u6570\u5b57\u3001\u6c49\u5b57\u7ec4\u6210\uff0c\u6700\u591a\u4e0d\u8d85\u8fc7\u516d\u4e2a\u3002"

    iput-object v0, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_TextBox;

    check-cast v0, Lcom/t4game/UI_TextBox;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/UI_TextBox;->sum_page:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/UI_TextBox;->setString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initAutoFlipSet()V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->job_Description:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/t4game/CommonConstants;->NATION_NAMES_SYNOPSIS:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/t4game/RoleLogin;->curInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPointerAlert()V
    .locals 5

    const/16 v0, 0x15

    const/16 v1, 0x51

    const/16 v2, 0xb8

    const/16 v3, 0x3c

    const/16 v4, 0x1c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setAlertPointerXY(IIIII)V

    return-void
.end method


# virtual methods
.method public autoFlip()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_TextBox;

    check-cast v0, Lcom/t4game/UI_TextBox;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    iget-byte v2, p0, Lcom/t4game/RoleLogin;->autoFlipTimeCnt:B

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/RoleLogin;->autoFlipCnt:B

    iget-byte v1, v0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v2, v0, Lcom/t4game/UI_TextBox;->sum_page:B

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    :cond_2
    iget-byte v1, v0, Lcom/t4game/UI_TextBox;->current_page:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0
.end method

.method public done()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/t4game/MiniPlayer;->release()V

    :cond_2
    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->initNewRole()V

    sput-object v2, Lcom/t4game/DraftingUtil;->loading1:Ljavax/microedition/lcdui/Image;

    sput-object v2, Lcom/t4game/DraftingUtil;->loading2:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    sget-boolean v0, Lcom/t4game/Defaults;->isGuest:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    :goto_2
    invoke-static {v3}, Lcom/t4game/Defaults;->createJobIcon(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    goto :goto_2
.end method

.method public done2()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/t4game/MiniPlayer;->release()V

    :cond_2
    iget-object v1, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/t4game/RoleLogin;->roleOriginal:[Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->initNewRole()V

    sput-object v2, Lcom/t4game/DraftingUtil;->loading1:Ljavax/microedition/lcdui/Image;

    sput-object v2, Lcom/t4game/DraftingUtil;->loading2:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    invoke-static {v3}, Lcom/t4game/Defaults;->createJobIcon(Z)V

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-boolean v0, p0, Lcom/t4game/RoleLogin;->runing:Z

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->currentTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->currentTick:B

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->currentTick:B

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/RoleLogin;->currentTick:B

    :cond_0
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iput-object p1, p0, Lcom/t4game/RoleLogin;->g:Ljavax/microedition/lcdui/Graphics;

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintCreateRole(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/RoleLogin;->alert_msg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v0, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintPlayerRoleListWindow(Ljavax/microedition/lcdui/Graphics;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/t4game/RoleLogin;->paintInput(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public getFocusedRoll()Lcom/t4game/MiniPlayer;
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/MiniPlayer;

    return-object p0
.end method

.method public pointerUIKeyEvent()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/RoleLogin;->pointerPlayerRoleListWindowKey(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerCreateRoleWindowKey()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerwaitingWindowKey()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerOfAlertBox()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->pointerOfInputBox()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public processChangeRoleName()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_0

    :cond_3
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    goto :goto_0
.end method

.method public processMessage(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->processCREATE_ROLE_RSP_MESSAGE()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->processGET_ROLELIST_RSP_MESSAGE()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    iget v0, v0, Lcom/t4game/MiniPlayer;->intId:I

    invoke-static {v0}, Lcom/t4game/GDataManager;->deletFirstTimeInGame(I)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iget-byte v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    invoke-virtual {v0, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget v0, p0, Lcom/t4game/RoleLogin;->playerRoleNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/RoleLogin;->playerRoleNum:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iput-object v0, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_list:Ljava/util/Vector;

    iput-byte v4, p0, Lcom/t4game/RoleLogin;->playerRoleListWindow_focus:B

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :cond_3
    :goto_4
    const/4 v0, -0x4

    invoke-virtual {p0, v4, v0}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u9ad8\u7ea7\u5bc6\u7801\u9519\u8bef\uff01"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->recivedBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Lcom/t4game/RoleLogin;->proressGET_ROLEORIGINAL_RSP_MESSAGE()V

    invoke-virtual {p0, v2, v4}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/t4game/RoleLogin;->processChangeRoleName()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x12 -> :sswitch_3
        0x14 -> :sswitch_1
        0x16 -> :sswitch_2
        0x12f -> :sswitch_4
    .end sparse-switch
.end method

.method public refreshView(Ljava/lang/String;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/RoleLogin;->screenId:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/t4game/RoleLogin;->input_String:Ljava/lang/String;

    goto :goto_0
.end method

.method sendGetPlayerListMessage(Z)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/t4game/RoleLogin;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public setViewScreen(BB)V
    .locals 2

    const/4 v0, 0x0

    iput-byte p1, p0, Lcom/t4game/RoleLogin;->screenId:B

    iput-byte p2, p0, Lcom/t4game/RoleLogin;->fromScreenId:B

    iput v0, p0, Lcom/t4game/RoleLogin;->menuVerticalIndex:I

    sput v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    iput v0, p0, Lcom/t4game/RoleLogin;->httpProcessOk:I

    invoke-static {}, Lcom/t4game/PointerUtil;->resetPointerINF()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/RoleLogin;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->initCreateRoleBin()V

    goto :goto_0

    :pswitch_2
    iput-byte v0, p0, Lcom/t4game/RoleLogin;->currentTick:B

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/Texter;->enable:Z

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    iput-object p0, v0, Lcom/t4game/Texter;->text:Lcom/t4game/IViewText;

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    iget-object v1, p0, Lcom/t4game/RoleLogin;->input_write_String:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->curStateOfSecurityPW:B

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/t4game/Texter;->setInputLength(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/t4game/Texter;->setInputLength(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public showAlert(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/microedition/lcdui/Alert;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Alert;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    :cond_0
    iget-object v0, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Alert;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/Alert;->setTimeout(J)V

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->myAlert:Ljavax/microedition/lcdui/Alert;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method public showCanvas()V
    .locals 2

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method public showForm(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    new-instance v0, Lcom/t4game/RoleLogin$inputForm;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/t4game/RoleLogin$inputForm;-><init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleLogin;->form:Lcom/t4game/RoleLogin$inputForm;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method public tick(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/RoleLogin;->keyCode:I

    invoke-direct {p0}, Lcom/t4game/RoleLogin;->processUIKeyEvent()V

    return-void
.end method
