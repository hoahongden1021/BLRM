.class public Lcom/t4game/Recharge;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/t4game/Recharge;


# instance fields
.field private attct:Lcom/t4game/IRecharge;

.field public gs:Lcom/t4game/GameScreen;

.field public network:Lcom/t4game/TcpNetwork;

.field public readBuffer:Lcom/t4game/IoBuffer;

.field public sendBuffer:Lcom/t4game/IoBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/Recharge;->instance:Lcom/t4game/Recharge;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    new-instance v0, Lcom/t4game/T4gameRecharge;

    invoke-direct {v0, p0}, Lcom/t4game/T4gameRecharge;-><init>(Lcom/t4game/Recharge;)V

    iput-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    return-void
.end method

.method public static getInstance()Lcom/t4game/Recharge;
    .locals 1

    sget-object v0, Lcom/t4game/Recharge;->instance:Lcom/t4game/Recharge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/Recharge;

    invoke-direct {v0}, Lcom/t4game/Recharge;-><init>()V

    sput-object v0, Lcom/t4game/Recharge;->instance:Lcom/t4game/Recharge;

    :cond_0
    sget-object v0, Lcom/t4game/Recharge;->instance:Lcom/t4game/Recharge;

    return-object v0
.end method


# virtual methods
.method public SendRecharge_Consume_Message(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1}, Lcom/t4game/IRecharge;->SendRecharge_Consume_Message(I)Z

    return-void
.end method

.method public SendRecharge_Message()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0}, Lcom/t4game/IRecharge;->sendBuy_Coin_List_Message()Z

    return-void
.end method

.method public addmsg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1}, Lcom/t4game/IRecharge;->draw(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public getGameScreen()Lcom/t4game/GameScreen;
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    goto :goto_0
.end method

.method public getInto(Lcom/t4game/TcpNetwork;Lcom/t4game/IoBuffer;Lcom/t4game/IoBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    iput-object p2, p0, Lcom/t4game/Recharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object p3, p0, Lcom/t4game/Recharge;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public pointer()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0}, Lcom/t4game/IRecharge;->pointer()V

    return-void
.end method

.method public processLoadingBack(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1}, Lcom/t4game/IRecharge;->processLoadingBack(B)V

    return-void
.end method

.method public processMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1}, Lcom/t4game/IRecharge;->processMessage(I)V

    return-void
.end method

.method public processServiveListMessage(BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1, p2}, Lcom/t4game/IRecharge;->processServiveListMessage(BLjava/lang/String;)V

    return-void
.end method

.method public processkeyEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0, p1}, Lcom/t4game/IRecharge;->processkeyEvent(I)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    invoke-interface {v0}, Lcom/t4game/IRecharge;->release()V

    sput-object v1, Lcom/t4game/Recharge;->instance:Lcom/t4game/Recharge;

    iput-object v1, p0, Lcom/t4game/Recharge;->attct:Lcom/t4game/IRecharge;

    iput-object v1, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    iput-object v1, p0, Lcom/t4game/Recharge;->network:Lcom/t4game/TcpNetwork;

    return-void
.end method

.method public setRecharge(Lcom/t4game/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    return-void
.end method

.method public setState(BZ)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameScreen;->setState(BZ)V

    return-void
.end method

.method public showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Recharge;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    return-void
.end method

.method public showForm(Ljava/lang/String;Lcom/t4game/T4gameRecharge;B)V
    .locals 2

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    new-instance v1, Lcom/t4game/RechargeForm;

    invoke-direct {v1, p1, p2, p3}, Lcom/t4game/RechargeForm;-><init>(Ljava/lang/String;Lcom/t4game/T4gameRecharge;I)V

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method
