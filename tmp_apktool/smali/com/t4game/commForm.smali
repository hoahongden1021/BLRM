.class public Lcom/t4game/commForm;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# static fields
.field static final CHOICE_EXCLUSIVE:B = 0x2t

.field static final CHOICE_MULTIPLE:B = 0x1t

.field static final TEXT_INPUT:B = 0x3t

.field static final TEXT_INTRO:B


# instance fields
.field ChoiceGroupEV:Ljava/util/Hashtable;

.field ChoiceGroupMV:Ljava/util/Hashtable;

.field TextFieldV:Ljava/util/Hashtable;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private cmdid:S

.field cmdlist:[B

.field commandL:Ljava/lang/String;

.field commandR:Ljava/lang/String;

.field private flag:B

.field gameworld:Lcom/t4game/GameWorld;

.field numFlag:I

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field sendBuffer:Lcom/t4game/IoBuffer;

.field text:Ljavax/microedition/lcdui/StringItem;

.field tickTime:I

.field timeOn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/t4game/IoBuffer;Lcom/t4game/GameWorld;)V
    .locals 3

    const-string v2, ""

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/commForm;->cmdid:S

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    new-instance v0, Lcom/t4game/IoBuffer;

    invoke-direct {v0}, Lcom/t4game/IoBuffer;-><init>()V

    iput-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object p3, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    invoke-virtual {p0, p2}, Lcom/t4game/commForm;->processMessage(Lcom/t4game/IoBuffer;)V

    iget-object v0, p0, Lcom/t4game/commForm;->commandL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/commForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/commForm;->commandR:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/commForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/commForm;->addCommand(Ljavax/microedition/lcdui/Command;)V

    :cond_1
    invoke-virtual {p0, p0}, Lcom/t4game/commForm;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/commForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_a

    :cond_0
    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v6}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3, v6}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->size()I

    move-result v0

    new-array v0, v0, [Z

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedFlags([Z)I

    move v1, v5

    move v3, v5

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_5

    aget-boolean v4, v0, v1

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/commForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v5}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, v3}, Lcom/t4game/IoBuffer;->putInt(I)V

    move v1, v5

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-boolean v3, v0, v1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u6846\u5fc5\u987b\u586b\u5199\uff01"

    const/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v3, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/commForm;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v5

    :goto_6
    iget-object v1, p0, Lcom/t4game/commForm;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/commForm;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_f

    iget-byte v0, p0, Lcom/t4game/commForm;->flag:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    iget-short v1, p0, Lcom/t4game/commForm;->cmdid:S

    iget-object v2, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    iget-byte v3, p0, Lcom/t4game/commForm;->flag:B

    and-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->setFormMessage(I[BI)V

    :cond_e
    iget-object v0, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/t4game/commForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_a

    iget-byte v0, p0, Lcom/t4game/commForm;->flag:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_10

    iget-object v0, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    iget-short v1, p0, Lcom/t4game/commForm;->cmdid:S

    iget-object v2, p0, Lcom/t4game/commForm;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    iget-byte v3, p0, Lcom/t4game/commForm;->flag:B

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->setFormMessage(I[BI)V

    :cond_10
    iget-object v0, p0, Lcom/t4game/commForm;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_5
.end method

.method public processMessage(Lcom/t4game/IoBuffer;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/commForm;->cmdid:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/commForm;->flag:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/commForm;->commandL:Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    iget-object v1, p0, Lcom/t4game/commForm;->commandL:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/commForm;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/commForm;->commandR:Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    iget-object v1, p0, Lcom/t4game/commForm;->commandR:Ljava/lang/String;

    invoke-direct {v0, v1, v10, v9}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/commForm;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v8

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljavax/microedition/lcdui/StringItem;

    const-string v3, " "

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/t4game/commForm;->text:Ljavax/microedition/lcdui/StringItem;

    iget-object v2, p0, Lcom/t4game/commForm;->text:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v2}, Lcom/t4game/commForm;->append(Ljavax/microedition/lcdui/Item;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    if-ne v2, v9, :cond_3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v8

    :goto_2
    if-ge v6, v4, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_2

    :cond_2
    new-instance v4, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v4, v3, v10, v5, v11}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iget-object v3, p0, Lcom/t4game/commForm;->ChoiceGroupMV:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/t4game/commForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_1

    :cond_3
    if-ne v2, v10, :cond_5

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v8

    :goto_3
    if-ge v6, v4, :cond_4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_3

    :cond_4
    new-instance v4, Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {v4, v3, v9, v5, v11}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iget-object v3, p0, Lcom/t4game/commForm;->ChoiceGroupEV:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/t4game/commForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    new-instance v7, Ljavax/microedition/lcdui/TextField;

    invoke-direct {v7, v3, v5, v6, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/t4game/commForm;->TextFieldV:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/t4game/commForm;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/commForm;->cmdlist:[B

    move v1, v8

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/t4game/commForm;->cmdlist:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_4

    :cond_7
    return-void
.end method
