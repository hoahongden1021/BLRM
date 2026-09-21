.class public Lcom/t4game/SoundPlayer;
.super Ljava/lang/Object;


# static fields
.field public static UserSpeed:I

.field static sSoundSwitch:Z


# instance fields
.field contentType:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field is:Ljava/io/InputStream;

.field player:Ljavax/microedition/media/Player;

.field time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    sput v0, Lcom/t4game/SoundPlayer;->UserSpeed:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->is:Ljava/io/InputStream;

    iput p1, p0, Lcom/t4game/SoundPlayer;->time:I

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->close()V

    iput-object v1, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoundPlayer;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/SoundPlayer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/t4game/SoundPlayer;->is:Ljava/io/InputStream;

    :cond_1
    iput-object v1, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/t4game/SoundPlayer;->close()V

    return-void
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->getState()I

    move-result v0

    return v0
.end method

.method public pausePlay()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->stop()V
    :try_end_0
    .catch Ljavax/microedition/media/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/microedition/media/MediaException;->printStackTrace()V

    goto :goto_0
.end method

.method public playFile()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->is:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    invoke-static {v0}, Ljavax/microedition/media/Manager;->createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->realize()V

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    iget v1, p0, Lcom/t4game/SoundPlayer;->time:I

    invoke-interface {v0, v1}, Ljavax/microedition/media/Player;->setLoopCount(I)V

    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/microedition/media/MediaException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/microedition/media/MediaException;->printStackTrace()V

    goto :goto_0
.end method

.method public playMIDI(Ljava/lang/String;)V
    .locals 1

    const-string v0, "audio/midi"

    iput-object v0, p0, Lcom/t4game/SoundPlayer;->contentType:Ljava/lang/String;

    sget-boolean v0, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/SoundPlayer;->playSound(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized playSound(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/t4game/SoundPlayer;->close()V

    iput-object p1, p0, Lcom/t4game/SoundPlayer;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/t4game/SoundPlayer;->playFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startPlay()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/SoundPlayer;->player:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->start()V
    :try_end_0
    .catch Ljavax/microedition/media/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/microedition/media/MediaException;->printStackTrace()V

    goto :goto_0
.end method
