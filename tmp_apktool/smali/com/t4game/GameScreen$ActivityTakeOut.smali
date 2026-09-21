.class Lcom/t4game/GameScreen$ActivityTakeOut;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/GameScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityTakeOut"
.end annotation


# instance fields
.field private Desc:Ljavax/microedition/lcdui/StringItem;

.field private MenuString:Ljava/lang/String;

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private fun:Ljavax/microedition/lcdui/StringItem;

.field private inPTF:Ljavax/microedition/lcdui/TextField;

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Lcom/t4game/GameScreen;


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    const-string v0, "\u53e3\u4ee4"

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->cancelCmd:Ljavax/microedition/lcdui/Command;

    const-string v0, "\u8bf7\u60a8\u5728\u8f93\u5165\u6846\u4e2d\u8f93\u5165\u6b63\u786e\u7684\u542f\u52a8\u7801\u4fe1\u606f\u6bcf\u4e2a\u542f\u52a8\u7801\u4ec5\u53ef\u4f7f\u7528\u4e00\u6b21!"

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->MenuString:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->Desc:Ljavax/microedition/lcdui/StringItem;

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e"

    iget-object v2, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->Activity_Container:[[[Ljava/lang/String;

    iget-object v3, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v3, v3, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v2, v2, v3

    iget-object v3, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v3, v3, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->Desc:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->Desc:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$ActivityTakeOut;->append(Ljavax/microedition/lcdui/Item;)I

    :cond_0
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u53e3\u4ee4\uff1a"

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->inPTF:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, ""

    iget-object v2, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->MenuString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->fun:Ljavax/microedition/lcdui/StringItem;

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$ActivityTakeOut;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$ActivityTakeOut;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$ActivityTakeOut;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/GameScreen$ActivityTakeOut;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->fun:Ljavax/microedition/lcdui/StringItem;

    invoke-virtual {p0, v0}, Lcom/t4game/GameScreen$ActivityTakeOut;->append(Ljavax/microedition/lcdui/Item;)I

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    const-string v1, "\u60f3\u5f53\u7279\u52a1\uff1f\u53e3\u4ee4\u5230\u5e95\u662f\u4ec0\u4e48\uff1f"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->activityId:I

    iget-object v2, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->inPTF:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v3, v3, Lcom/t4game/GameWorld;->activityType:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->SendActivity_Takeout_Message(ILjava/lang/String;B)Z

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameScreen$ActivityTakeOut;->this$0:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0
.end method
