.class Lcom/t4game/GameWorld$ActivityTakeOut2;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/GameWorld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityTakeOut2"
.end annotation


# instance fields
.field private CharAndNum:[Ljava/lang/String;

.field private MenuString:Ljava/lang/String;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private fun:Ljavax/microedition/lcdui/StringItem;

.field private inPTF:Ljavax/microedition/lcdui/TextField;

.field private inPTF2:Ljavax/microedition/lcdui/TextField;

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Lcom/t4game/GameWorld;


# direct methods
.method public constructor <init>(Lcom/t4game/GameWorld;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x20

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, ""

    iput-object p1, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    const-string v0, "\u81ea\u52a8\u5403\u836f"

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v6, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v4, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const-string v0, "\u8bf7\u60a8\u5728\u8f93\u5165\u6846\u4e2d\u8f93\u5165\u6570\u503c\uff0c\u53ea\u80fd\u8f93\u51651\u523099\u4e4b\u95f4\u7684\u6574\u6570\u3002\u8f93\u5165\u7684\u6570\u5b57\u8868\u793a\u81ea\u52a8\u5403\u8840\u7684\u8840\u91cf\u767e\u5206\u6bd4\u3002"

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->MenuString:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const-string v1, "6"

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->CharAndNum:[Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u81ea\u52a8\u5403\u8840\u6570\u503c\uff1a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lcom/t4game/GameWorld;->blood:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u81ea\u52a8\u5403\u84dd\u6570\u503c\uff1a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lcom/t4game/GameWorld;->law:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, ""

    iget-object v1, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->MenuString:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->fun:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->fun:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/GameWorld$ActivityTakeOut2;->append(Ljavax/microedition/lcdui/Item;)I

    return-void
.end method

.method private isCharAndNum(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v0, v5

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->CharAndNum:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->CharAndNum:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    :goto_2
    if-nez v2, :cond_0

    move v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    move v2, v5

    goto :goto_2
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/t4game/GameWorld$ActivityTakeOut2;->isCharAndNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/t4game/GameWorld$ActivityTakeOut2;->isCharAndNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    const-string v1, "\u8bf7\u8f93\u51651\u523099\u4e4b\u95f4\u7684\u6574\u6570\u3002"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendNumber(BBB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameWorld$ActivityTakeOut2;->this$0:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0
.end method
