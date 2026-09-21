.class public Lcom/t4game/lingquForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# instance fields
.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private gameScreen:Lcom/t4game/GameScreen;

.field private gameWorld:Lcom/t4game/GameWorld;

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field private sg:Lcom/t4game/StartGame;

.field private textField:Ljavax/microedition/lcdui/TextField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/t4game/GameWorld;Lcom/t4game/GameScreen;Lcom/t4game/StartGame;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, ""

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/lingquForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v5, v4}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/lingquForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    iput-object p2, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iput-object p3, p0, Lcom/t4game/lingquForm;->gameScreen:Lcom/t4game/GameScreen;

    iput-object p4, p0, Lcom/t4game/lingquForm;->sg:Lcom/t4game/StartGame;

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget v0, v0, Lcom/t4game/GameWorld;->lingquType:I

    if-ne v0, v4, :cond_1

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    iget-object v1, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->jieyiName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v6, v1, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/lingquForm;->textField:Ljavax/microedition/lcdui/TextField;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/lingquForm;->textField:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/lingquForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/lingquForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/lingquForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/lingquForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/lingquForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/lingquForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget v0, v0, Lcom/t4game/GameWorld;->lingquType:I

    if-ne v0, v5, :cond_0

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    iget-object v1, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->jieyiName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v6, v1, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/lingquForm;->textField:Ljavax/microedition/lcdui/TextField;

    goto :goto_0
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/lingquForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/lingquForm;->textField:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameWorld;->jieyiNameTemp:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameScreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_InputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->jieyiNameTemp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UI_InputBox;->setString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->jieyiNameTemp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u786e\u5b9a\u7528\u6b64\u79f0\u53f7"

    const v2, 0x1622c

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/lingquForm;->gameScreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    :cond_1
    iget-object v0, p0, Lcom/t4game/lingquForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/lingquForm;->gameScreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    :cond_2
    return-void
.end method
