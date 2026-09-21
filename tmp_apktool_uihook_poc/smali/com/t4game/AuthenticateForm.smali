.class public Lcom/t4game/AuthenticateForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;
.implements Ljavax/microedition/lcdui/ItemStateListener;


# instance fields
.field private CharAndNum:[Ljava/lang/String;

.field private final Length_Limit_End:B

.field private final Length_Limit_Start:B

.field private ac:Lcom/t4game/AuthenticateCommon;

.field private af:Lcom/t4game/IAuthenticateForm;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

.field private choiceGroup2:Ljavax/microedition/lcdui/ChoiceGroup;

.field private description:Ljavax/microedition/lcdui/StringItem;

.field private formType:B

.field private inPTF:Ljavax/microedition/lcdui/TextField;

.field private inPTF2:Ljavax/microedition/lcdui/TextField;

.field private inPTF3:Ljavax/microedition/lcdui/TextField;

.field private inPTF4:Ljavax/microedition/lcdui/TextField;

.field private inPTF5:Ljavax/microedition/lcdui/TextField;

.field private inPTF6:Ljavax/microedition/lcdui/TextField;

.field private isChoiced:Z

.field private okCmd:Ljavax/microedition/lcdui/Command;


# direct methods
.method public constructor <init>(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p4}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF6:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup2:Ljavax/microedition/lcdui/ChoiceGroup;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->CharAndNum:[Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/AuthenticateForm;->Length_Limit_Start:B

    iput-byte v6, p0, Lcom/t4game/AuthenticateForm;->Length_Limit_End:B

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v4, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

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

    const-string v1, "q"

    aput-object v1, v0, v6

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

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->CharAndNum:[Ljava/lang/String;

    iput-byte p3, p0, Lcom/t4game/AuthenticateForm;->formType:B

    iget-byte v0, p0, Lcom/t4game/AuthenticateForm;->formType:B

    iput-byte v0, p2, Lcom/t4game/AuthenticateCommon;->formType:B

    iput-object p2, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object p1, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-virtual {p0}, Lcom/t4game/AuthenticateForm;->initForm()V

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
    iget-object v4, p0, Lcom/t4game/AuthenticateForm;->CharAndNum:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/t4game/AuthenticateForm;->CharAndNum:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v0}, Lcom/t4game/IAuthenticateForm;->showCanvas()V

    invoke-virtual {p0}, Lcom/t4game/AuthenticateForm;->release()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v9, 0x6

    const/16 v7, 0x7d0

    const-string v10, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v8, ""

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_4a

    iget-byte v0, p0, Lcom/t4game/AuthenticateForm;->formType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v9, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v9, :cond_6

    :cond_5
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v2, v0, v1}, Lcom/t4game/IAuthenticateForm;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u8d26\u53f7\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v9, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v9, :cond_e

    :cond_d
    const-string v0, "\u8d26\u53f7\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16\u4f4d\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    sget-byte v4, Lcom/t4game/Defaults;->registSeverCtrlFlog:B

    const/4 v6, 0x1

    if-ne v4, v6, :cond_50

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u771f\u5b9e\u59d3\u540d"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    move v0, v11

    move v4, v11

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface/range {v0 .. v5}, Lcom/t4game/IAuthenticateForm;->setUserRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v0, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    move v0, v11

    move v4, v11

    goto :goto_1

    :cond_10
    iget-object v4, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4\uff01"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v9, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v9, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v9, :cond_17

    :cond_16
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v3, v0, v1, v2, v11}, Lcom/t4game/IAuthenticateForm;->setModifyPassWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u9ad8\u7ea7\u5bc6\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v0, "\u8bf7\u786e\u5b9a\u60a8\u7684\u9ad8\u7ea7\u5bc6\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_1c
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_1f

    :cond_1e
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u4e00\u81f4\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v0, "\u5bc6\u7801\u548c\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u76f8\u540c\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_21
    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v3, v0, v1, v2}, Lcom/t4game/IAuthenticateForm;->setSetSecurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v0, "\u65e7\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v0, "\u8bf7\u8f93\u5165\u4f60\u7684\u65b0\u9ad8\u7ea7\u5bc6\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v0, "\u8bf7\u786e\u5b9a\u60a8\u7684\u65b0\u9ad8\u7ea7\u5bc6\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u65b0\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u4e00\u81f4\uff01"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_27
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u8d26\u53f7\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v9, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v9, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v9, :cond_2a

    :cond_29
    const-string v0, "\u8d26\u53f7\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2a
    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/t4game/IAuthenticateForm;->setModifySercurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2b
    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    invoke-interface {v1, v0, v2}, Lcom/t4game/IAuthenticateForm;->setSeekPassWord(Ljava/lang/String;B)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2d
    const-string v4, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v0, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2e
    const-string v4, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v0, "\u8bf7\u786e\u8ba4\u624b\u673a\u53f7"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_30

    const-string v0, "\u624b\u673a\u53f7\u4e0d\u6b63\u786e"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_30
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u624b\u673a\u53f7\u4e0d\u4e00\u81f4"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/t4game/AuthenticateForm;->isCharAndNum(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_32
    const-string v0, "\u975e\u6cd5\u5b57\u7b26\uff0c\u8d26\u53f7\u3001\u9ad8\u7ea7\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v9, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v9, :cond_35

    :cond_34
    const-string v0, "\u8d26\u53f7\u3001\u9ad8\u7ea7\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_35
    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v3, v0, v1, v2}, Lcom/t4game/IAuthenticateForm;->setPhoneBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7\u7684\u9ad8\u7ea7\u5bc6\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_37
    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v2, v0, v1}, Lcom/t4game/IAuthenticateForm;->setPhoneSlacking(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_38
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_39
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    :cond_3a
    const-string v0, "\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_3d

    :cond_3c
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u90ae\u7bb1\u4e0d\u4e00\u81f4\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3e
    iget-object v3, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v3, v0, v1, v2}, Lcom/t4game/IAuthenticateForm;->setMailBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_40
    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v2, v0, v1}, Lcom/t4game/IAuthenticateForm;->setMailSlacking(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_41
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_42
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_43
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u771f\u5b9e\u59d3\u540d"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_44
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "\u8bc1\u4ef6\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_45
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    iget-object v5, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    invoke-interface/range {v0 .. v6}, Lcom/t4game/IAuthenticateForm;->setIdentityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v10, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7\u7ed1\u5b9a\u7684\u8bc1\u4ef6\u53f7\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_47
    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v2, v0, v1}, Lcom/t4game/IAuthenticateForm;->setAccountFrozen(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_48
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7\u7ed1\u5b9a\u7684\u8bc1\u4ef6\u53f7\u7801"

    invoke-direct {p0, v0, v7}, Lcom/t4game/AuthenticateForm;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_49
    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v2, v0, v1}, Lcom/t4game/IAuthenticateForm;->setAccountUnfreeze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :cond_4a
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    sget-boolean v1, Lcom/t4game/Defaults;->RegistProtocolDialog:Z

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_3
    invoke-direct {p0}, Lcom/t4game/AuthenticateForm;->showCanvas()V

    goto/16 :goto_0

    :cond_4b
    move v1, v11

    goto :goto_2

    :cond_4c
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/16 v1, -0xd

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-boolean v0, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    const/16 v1, 0x8

    invoke-virtual {v0, v11, v1}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    :goto_4
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iput-boolean v11, v0, Lcom/t4game/AuthenticateCommon;->toMasterMenu:Z

    goto :goto_3

    :cond_4d
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_4

    :cond_4e
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v0, v0, Lcom/t4game/AuthenticateCommon;->formType:B

    const/16 v1, -0xc

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v1, v11}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v1

    iget-object v1, v1, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/t4game/IAuthenticateForm;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4f
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-object v1, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iget-byte v1, v1, Lcom/t4game/AuthenticateCommon;->fromScreenId:B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/t4game/AuthenticateCommon;->setViewScreen(BB)V

    goto :goto_3

    :cond_50
    move v4, v11

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public initForm()V
    .locals 8

    const/4 v3, 0x6

    const/4 v7, 0x1

    const/16 v5, 0x10

    const/4 v4, 0x0

    const-string v6, ""

    iget-byte v0, p0, Lcom/t4game/AuthenticateForm;->formType:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v2, v4}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a"

    iget-object v2, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    invoke-virtual {v2, v7}, Lcom/t4game/AuthenticateCommon;->getInputBox(I)Lcom/t4game/UI_InputBox;

    move-result-object v2

    iget-object v2, v2, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e:"

    const-string v2, "\u8bf7\u786e\u8ba4\u60a8\u7684\u8d26\u53f7\u548c\u5bc6\u7801\uff0c\u53ea\u80fd\u75316~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\u3002"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    invoke-interface {v0}, Lcom/t4game/IAuthenticateForm;->getUserInfo()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Command;

    const-string v2, "\u786e\u5b9a"

    invoke-direct {v1, v2, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a"

    aget-object v3, v0, v7

    invoke-direct {v1, v2, v3, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u8bf7\u786e\u8ba4\u5bc6\u7801\uff1a"

    aget-object v0, v0, v7

    invoke-direct {v1, v2, v0, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165E-mail"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\uff1a"

    const-string v2, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u8eab\u4efd\u8bc1"

    aput-object v1, v0, v4

    const-string v1, "\u519b\u5b98\u8bc1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u62a4\u7167"

    aput-object v2, v0, v1

    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v2, "\u9009\u62e9\u8bc1\u4ef6\u7c7b\u578b"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    sget-byte v0, Lcom/t4game/Defaults;->registSeverCtrlFlog:B

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    :cond_0
    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e:"

    const-string v2, "\u8bf7\u786e\u8ba4\u60a8\u7684\u8d26\u53f7\u548c\u5bc6\u7801\uff0c\u53ea\u80fd\u75316~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\u3002"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u65e7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u65b0\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u65b0\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e:"

    const-string v2, "\u8bf7\u786e\u8ba4\u60a8\u7684\u8d26\u53f7\u548c\u5bc6\u7801\uff0c\u53ea\u80fd\u75316~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\u3002"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u624b\u673a\u627e\u56de"

    aput-object v1, v0, v4

    const-string v1, "\u90ae\u7bb1\u627e\u56de"

    aput-object v1, v0, v7

    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v2, "\u627e\u56de\u65b9\u5f0f\uff1a"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\uff1a"

    const-string v2, ""

    const/16 v2, 0xb

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u624b\u673a\u53f7\uff1a"

    const-string v2, ""

    const/16 v2, 0xb

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u5730\u5740:"

    const-string v2, ""

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u90ae\u7bb1\u5730\u5740:"

    const-string v2, ""

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d:"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\uff1a"

    const-string v2, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u8eab\u4efd\u8bc1"

    aput-object v1, v0, v4

    const-string v1, "\u519b\u5b98\u8bc1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "\u62a4\u7167"

    aput-object v2, v0, v1

    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v2, "\u9009\u62e9\u8bc1\u4ef6\u7c7b\u578b"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v1, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\uff1a"

    const-string v2, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u65e7\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u65b0\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u65b0\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {v0, v1, v3, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\u7801\uff1a"

    const-string v2, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v2, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/AuthenticateForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/AuthenticateForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public itemStateChanged(Ljavax/microedition/lcdui/Item;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->ac:Lcom/t4game/AuthenticateCommon;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->af:Lcom/t4game/IAuthenticateForm;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->okCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF3:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF4:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF5:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->inPTF6:Ljavax/microedition/lcdui/TextField;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->description:Ljavax/microedition/lcdui/StringItem;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup:Ljavax/microedition/lcdui/ChoiceGroup;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->choiceGroup2:Ljavax/microedition/lcdui/ChoiceGroup;

    iput-object v0, p0, Lcom/t4game/AuthenticateForm;->CharAndNum:[Ljava/lang/String;

    return-void
.end method
