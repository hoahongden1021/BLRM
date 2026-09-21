.class Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/game/GameCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyAccess"
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/game/GameCanvas;


# direct methods
.method private constructor <init>(Ljavax/microedition/lcdui/game/GameCanvas;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initBuffer()V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/game/GameCanvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/game/GameCanvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    iput-object v1, v0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public recordKeyPressed(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 2

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1, v0}, Ljavax/microedition/lcdui/game/GameCanvas;->access$176(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v1, v0}, Ljavax/microedition/lcdui/game/GameCanvas;->access$276(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordKeyReleased(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 2

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    xor-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljavax/microedition/lcdui/game/GameCanvas;->access$272(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActualKeyState(Ljavax/microedition/lcdui/game/GameCanvas;I)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;->this$0:Ljavax/microedition/lcdui/game/GameCanvas;

    invoke-static {v0, p2}, Ljavax/microedition/lcdui/game/GameCanvas;->access$202(Ljavax/microedition/lcdui/game/GameCanvas;I)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public suppressedKeyEvents(Ljavax/microedition/lcdui/game/GameCanvas;)Z
    .locals 1

    invoke-static {p1}, Ljavax/microedition/lcdui/game/GameCanvas;->access$000(Ljavax/microedition/lcdui/game/GameCanvas;)Z

    move-result v0

    return v0
.end method
