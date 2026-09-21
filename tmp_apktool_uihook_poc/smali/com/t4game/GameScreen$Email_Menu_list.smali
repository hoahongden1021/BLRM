.class Lcom/t4game/GameScreen$Email_Menu_list;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/GameScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Email_Menu_list"
.end annotation


# instance fields
.field private final boxW:I

.field public focus:B

.field final synthetic this$0:Lcom/t4game/GameScreen;

.field private ti:[Ljava/lang/String;

.field private ti_pos:[I

.field vector:Ljava/util/Vector;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    iput-byte v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->x:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u9009\u4e2d"

    aput-object v1, v0, v2

    const-string v1, "\u6458\u8981"

    aput-object v1, v0, v3

    const-string v1, "\u6536\u4fe1\u65f6\u95f4"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->ti:[Ljava/lang/String;

    new-array v0, v5, [I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x1e

    aput v1, v0, v2

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x50

    aput v1, v0, v3

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/16 v2, 0x1e

    sub-int/2addr v1, v2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->ti_pos:[I

    const/16 v0, 0xa

    iput v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->boxW:I

    return-void
.end method

.method private drawMailTitle()V
    .locals 6

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$300(Lcom/t4game/GameScreen;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    const v1, 0xffc700

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v1}, Lcom/t4game/GameScreen;->access$300(Lcom/t4game/GameScreen;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->ti:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/GameScreen$Email_Menu_list;->ti_pos:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawSelectBox(III)V
    .locals 4

    const/16 v2, 0xa

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$300(Lcom/t4game/GameScreen;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    const v1, 0xffc700

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$300(Lcom/t4game/GameScreen;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, p1, v1, v2, v2}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$200(Lcom/t4game/GameScreen;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget v1, v1, Lcom/t4game/GameScreen;->Email_RECEIVE_page_focus:I

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v2}, Lcom/t4game/GameScreen;->access$100(Lcom/t4game/GameScreen;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$300(Lcom/t4game/GameScreen;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, p2, 0x6

    invoke-virtual {v0, v1, v2, v3, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getObject(I)Lcom/t4game/OneRow_EMAIL_RECEIVE;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;

    return-object p0
.end method

.method public keyPressed(I)V
    .locals 6

    const/4 v3, -0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->pressedFunctionMenu(BB)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    const/4 v0, -0x5

    if-ne p1, v0, :cond_a

    move v0, v3

    :goto_0
    if-ne v0, v3, :cond_4

    iget-byte v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$Email_Menu_list;->getObject(I)Lcom/t4game/OneRow_EMAIL_RECEIVE;

    move-result-object v0

    iget-boolean v0, v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->isLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu2:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    iput v1, v0, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu4:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu1:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu3:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_RECEIVE_state2_menu:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v1, -0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->EMAIL_NEW_has:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->EMAIL_NEW_has:Z

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->send_EMAIL_RECEIVE()Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_2

    :cond_6
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget v0, v0, Lcom/t4game/GameScreen;->Email_RECEIVE_page_focus:I

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v1}, Lcom/t4game/GameScreen;->access$100(Lcom/t4game/GameScreen;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->email_Menu_Receive:[Lcom/t4game/GameScreen$Email_Menu_list;

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget v2, v2, Lcom/t4game/GameScreen;->Email_RECEIVE_page_focus:I

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    invoke-virtual {v1, v2}, Lcom/t4game/GameScreen$Email_Menu_list;->getObject(I)Lcom/t4game/OneRow_EMAIL_RECEIVE;

    move-result-object v1

    iget v1, v1, Lcom/t4game/OneRow_EMAIL_RECEIVE;->id:I

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v2}, Lcom/t4game/GameScreen;->access$200(Lcom/t4game/GameScreen;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v3}, Lcom/t4game/GameScreen;->access$200(Lcom/t4game/GameScreen;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_7

    move v3, v5

    :goto_3
    aput-boolean v3, v2, v0

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v2}, Lcom/t4game/GameScreen;->access$200(Lcom/t4game/GameScreen;)[Z

    move-result-object v2

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v0}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_4
    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v2}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v2}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_9

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    invoke-static {v1}, Lcom/t4game/GameScreen;->access$000(Lcom/t4game/GameScreen;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    move v0, p1

    goto/16 :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->x:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuY:I

    const/16 v0, 0x14a

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sput v5, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    invoke-direct {p0}, Lcom/t4game/GameScreen$Email_Menu_list;->drawMailTitle()V

    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-byte v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$Email_Menu_list;->getObject(I)Lcom/t4game/OneRow_EMAIL_RECEIVE;

    move-result-object v1

    iget v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->x:I

    iget v3, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/t4game/OneRow_EMAIL_RECEIVE;->paint(Ljavax/microedition/lcdui/Graphics;IIZ)V

    :goto_1
    iget v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->x:I

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/t4game/GameScreen$Email_Menu_list;->drawSelectBox(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$Email_Menu_list;->getObject(I)Lcom/t4game/OneRow_EMAIL_RECEIVE;

    move-result-object v1

    iget v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->x:I

    iget v3, p0, Lcom/t4game/GameScreen$Email_Menu_list;->y:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3, v5}, Lcom/t4game/OneRow_EMAIL_RECEIVE;->paint(Ljavax/microedition/lcdui/Graphics;IIZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    const-string v1, "\u53ef\u70b9\u51fb\u2018\u4e2d\u952e\u2019\u9009\u4e2d/\u53d6\u6d88\u5f53\u524d\u90ae\u4ef6"

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    const/16 v3, 0x24

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v5, v2}, Lcom/t4game/GameScreen;->access$400(Lcom/t4game/GameScreen;Ljava/lang/String;II)V

    return-void
.end method

.method public pointerPressed()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->this$0:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    iget-object v2, p0, Lcom/t4game/GameScreen$Email_Menu_list;->vector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->pointerFunctionMenu(BB)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GameScreen$Email_Menu_list;->focus:B

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$Email_Menu_list;->keyPressed(I)V

    :cond_0
    return-void
.end method
