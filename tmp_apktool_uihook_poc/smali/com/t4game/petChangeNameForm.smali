.class Lcom/t4game/petChangeNameForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# instance fields
.field private MenuString:Ljava/lang/String;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private fun:Ljavax/microedition/lcdui/StringItem;

.field private inPTF:Ljavax/microedition/lcdui/TextField;

.field private okCmd:Ljavax/microedition/lcdui/Command;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v3, 0x1

    const-string v5, ""

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const/16 v1, 0xa0f

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/petChangeNameForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const/16 v1, 0xa7a

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/petChangeNameForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0xc46

    invoke-static {v3, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/petChangeNameForm;->MenuString:Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const/16 v1, 0xc47

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v3

    iget-object v3, v3, Lcom/t4game/Pet;->petName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/petChangeNameForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, ""

    iget-object v1, p0, Lcom/t4game/petChangeNameForm;->MenuString:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/petChangeNameForm;->fun:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/petChangeNameForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/petChangeNameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/petChangeNameForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/petChangeNameForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->fun:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/petChangeNameForm;->append(Ljavax/microedition/lcdui/Item;)I

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/petChangeNameForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0xaf0

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gw:Lcom/t4game/GameWorld;

    const/16 v1, 0xc48

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/Pet;->tempPetName:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/t4game/Pet;->sendPetChangeNameMsg(Ljava/lang/String;)Z

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/petChangeNameForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/Pet;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0
.end method
