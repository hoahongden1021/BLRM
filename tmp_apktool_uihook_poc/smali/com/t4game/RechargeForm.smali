.class public Lcom/t4game/RechargeForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;
.implements Ljavax/microedition/lcdui/ItemStateListener;


# static fields
.field public static final TYPE_ACCOUNT_INPUT:B = 0x2t

.field public static final TYPE_CARD_ID:B = 0x3t

.field public static final TYPE_DENOMINATION:B = 0x5t

.field public static final TYPE_NOTE_NUM:B = 0x6t

.field public static final TYPE_PASSWORD:B = 0x4t

.field public static final TYPE_SKY_MONEY_INPUT:B = 0x1t


# instance fields
.field private CharAndNum:[Ljava/lang/String;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private inPTF1:Ljavax/microedition/lcdui/TextField;

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field private rc:Lcom/t4game/T4gameRecharge;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/t4game/T4gameRecharge;I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/t4game/RechargeForm;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    invoke-direct {v0, v1, v5, v2}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v4, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v2

    const-string v1, "b"

    aput-object v1, v0, v3

    const-string v1, "c"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const-string v1, "g"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/RechargeForm;->CharAndNum:[Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    iput p3, p0, Lcom/t4game/RechargeForm;->type:I

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    const/16 v5, 0x13

    const/16 v3, 0x20

    const-string v4, ""

    iget v0, p0, Lcom/t4game/RechargeForm;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/t4game/RechargeForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/RechargeForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/RechargeForm;->setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V

    invoke-virtual {p0, p0}, Lcom/t4game/RechargeForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void

    :pswitch_0
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5929\u5e01\u6570\u91cf"

    const-string v2, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u8d26\u53f7"

    const-string v2, ""

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u5361\u53f7"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u5bc6\u7801"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u91d1\u989d"

    const-string v2, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u77ed\u4fe1\u6761\u6570"

    const-string v2, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/RechargeForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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
    iget-object v4, p0, Lcom/t4game/RechargeForm;->CharAndNum:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/t4game/RechargeForm;->CharAndNum:[Ljava/lang/String;

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

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljavax/microedition/lcdui/Alert;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Alert;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Alert;->setString(Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/Alert;->setTimeout(J)V

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v1

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method private showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    invoke-virtual {v0}, Lcom/t4game/T4gameRecharge;->showCanvas()V

    invoke-virtual {p0}, Lcom/t4game/RechargeForm;->release()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 6

    const/16 v2, 0x7d0

    const-string v5, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    const-string v4, "^[-]{1}[0-9]*$"

    const-string v3, ""

    iget-object v0, p0, Lcom/t4game/RechargeForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/t4game/RechargeForm;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u6570\u91cf\uff01"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v4, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string v0, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    invoke-direct {p0, v5, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/t4game/RechargeForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "\u8bf7\u8f93\u5165\u5361\u53f7\uff01"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\u8bf7\u8f93\u5165\u91d1\u989d\uff01"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v4, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    const-string v0, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    invoke-direct {p0, v5, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/t4game/T4gameRecharge;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iput-object v0, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u6761\u6570"

    invoke-direct {p0, v0, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "^[-]{1}[0-9]*$"

    invoke-static {v4, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    const-string v0, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    invoke-direct {p0, v5, v2}, Lcom/t4game/RechargeForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    iget-object v0, v0, Lcom/t4game/T4gameRecharge;->ui:Lcom/t4game/GameUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_InputBox;

    iput-object v1, v0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/t4game/RechargeForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/t4game/RechargeForm;->type:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/RechargeForm;->showCanvas()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public itemStateChanged(Ljavax/microedition/lcdui/Item;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RechargeForm;->rc:Lcom/t4game/T4gameRecharge;

    iput-object v0, p0, Lcom/t4game/RechargeForm;->okCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/RechargeForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/RechargeForm;->CharAndNum:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RechargeForm;->inPTF1:Ljavax/microedition/lcdui/TextField;

    return-void
.end method
