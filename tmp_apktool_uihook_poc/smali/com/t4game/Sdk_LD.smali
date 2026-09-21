.class public Lcom/t4game/Sdk_LD;
.super Ljava/lang/Object;


# static fields
.field private static sdk:Lcom/t4game/Sdk_LD;

.field public static str:[Ljava/lang/String;


# instance fields
.field private gs:Lcom/t4game/GameScreen;

.field public money:[I

.field public pkid:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/t4game/Sdk_LD;

    invoke-direct {v0}, Lcom/t4game/Sdk_LD;-><init>()V

    sput-object v0, Lcom/t4game/Sdk_LD;->sdk:Lcom/t4game/Sdk_LD;

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/Sdk_LD;->str:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Sdk_LD;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/Sdk_LD;->pkid:I

    return-void
.end method

.method public static getInstance()Lcom/t4game/Sdk_LD;
    .locals 1

    sget-object v0, Lcom/t4game/Sdk_LD;->sdk:Lcom/t4game/Sdk_LD;

    return-object v0
.end method


# virtual methods
.method public getWebView(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const-class v2, Lj2ab/android/app/ShowWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lj2ab/android/app/J2ABMIDletActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public init(Lcom/t4game/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    return-void
.end method

.method public processMsg(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/Sdk_LD;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v2, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v1, v2}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/Sdk_LD;->getWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7533\u8bf7\u8ba2\u5355\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/Sdk_LD;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
    .end packed-switch
.end method

.method public sendListMsg()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x259

    iget-object v2, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendOrderMsg(II)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/Sdk_LD;->money:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x258

    iget-object v2, p0, Lcom/t4game/Sdk_LD;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method
