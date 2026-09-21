.class Lcom/t4game/RoleLogin$inputForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/RoleLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "inputForm"
.end annotation


# instance fields
.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private inPTF:Ljavax/microedition/lcdui/TextField;

.field private is_change_role_name:Z

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Lcom/t4game/RoleLogin;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    invoke-direct {p0, p2}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    invoke-direct {v0, p2, p3, p4, p5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/RoleLogin$inputForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/t4game/RoleLogin;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    iput-object p1, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    const-string v0, "\u8bf7\u8f93\u5165\uff1a"

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v5}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v5}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean p4, p0, Lcom/t4game/RoleLogin$inputForm;->is_change_role_name:Z

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57:"

    invoke-direct {v0, v1, p3, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    :goto_0
    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e:"

    const-string v2, "\u89d2\u8272\u540d\u4e0d\u80fd\u8d85\u8fc76\u4e2a\u6c49\u5b57\u6216\u5b57\u7b26(\u5305\u62ec\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf\u7b49)"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/t4game/RoleLogin;->access$002(Lcom/t4game/RoleLogin;Ljavax/microedition/lcdui/StringItem;)Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RoleLogin$inputForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/RoleLogin$inputForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void

    :cond_0
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    iget-object v1, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    invoke-direct {v0, v1, p3, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    goto :goto_0
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->title:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    const-string v1, "\u8bf7\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/RoleLogin;->showAlert(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/RoleLogin$inputForm;->is_change_role_name:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    iget-object v0, v0, Lcom/t4game/RoleLogin;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    invoke-virtual {v2}, Lcom/t4game/RoleLogin;->getFocusedRoll()Lcom/t4game/MiniPlayer;

    move-result-object v2

    iget v2, v2, Lcom/t4game/MiniPlayer;->intId:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendChangeRoleName(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/RoleLogin;->setViewScreen(BB)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    invoke-virtual {v0}, Lcom/t4game/RoleLogin;->showCanvas()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    iget-object v0, v0, Lcom/t4game/RoleLogin;->playerInfo:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    iget-object v1, p0, Lcom/t4game/RoleLogin$inputForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/RoleLogin;->refreshView(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleLogin$inputForm;->this$0:Lcom/t4game/RoleLogin;

    invoke-virtual {v0}, Lcom/t4game/RoleLogin;->showCanvas()V

    goto :goto_0
.end method
