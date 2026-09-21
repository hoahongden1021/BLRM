.class public Lcom/t4game/BeforeGame;
.super Ljavax/microedition/lcdui/game/GameCanvas;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field g:Ljavax/microedition/lcdui/Graphics;

.field private imgLogoImage:Ljavax/microedition/lcdui/Image;

.field mid:Lcom/t4game/GameMIDlet;

.field private running:Z

.field private tick:I


# direct methods
.method protected constructor <init>(Lcom/t4game/GameMIDlet;Lcom/t4game/StartGame;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/game/GameCanvas;-><init>(Z)V

    iput-boolean v0, p0, Lcom/t4game/BeforeGame;->running:Z

    iput v0, p0, Lcom/t4game/BeforeGame;->tick:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/BeforeGame;->imgLogoImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2}, Lcom/t4game/BeforeGame;->setFullScreenMode(Z)V

    invoke-virtual {p0}, Lcom/t4game/BeforeGame;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/t4game/BeforeGame;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/t4game/Defaults;->setResolutionRatio(II)V

    iput-object p1, p0, Lcom/t4game/BeforeGame;->mid:Lcom/t4game/GameMIDlet;

    iget-object v0, p0, Lcom/t4game/BeforeGame;->imgLogoImage:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    const-string v0, "/logo.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/BeforeGame;->imgLogoImage:Ljavax/microedition/lcdui/Image;

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/BeforeGame;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/BeforeGame;->g:Ljavax/microedition/lcdui/Graphics;

    iput-boolean v2, p0, Lcom/t4game/BeforeGame;->running:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/BeforeGame;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/BeforeGame;->imgLogoImage:Ljavax/microedition/lcdui/Image;

    sget v2, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {v0, v1, v3, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x64

    :goto_0
    iget-boolean v0, p0, Lcom/t4game/BeforeGame;->running:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iget v2, p0, Lcom/t4game/BeforeGame;->tick:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/t4game/BeforeGame;->running:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/t4game/BeforeGame;->draw()V

    invoke-virtual {p0}, Lcom/t4game/BeforeGame;->flushGraphics()V

    :cond_0
    iget v2, p0, Lcom/t4game/BeforeGame;->tick:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/t4game/BeforeGame;->tick:I

    iget v2, p0, Lcom/t4game/BeforeGame;->tick:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/t4game/BeforeGame;->running:Z

    iget-object v2, p0, Lcom/t4game/BeforeGame;->mid:Lcom/t4game/GameMIDlet;

    invoke-virtual {v2}, Lcom/t4game/GameMIDlet;->normalStart()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/BeforeGame;->imgLogoImage:Ljavax/microedition/lcdui/Image;

    :cond_1
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v0, v4, v0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method
